.class public final Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;
.super Lorg/apache/poi/openxml4j/opc/PackagePart;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/openxml4j/opc/PackageProperties;


# static fields
.field private static final DATE_FORMATS:[Ljava/lang/String;

.field private static final DEFAULT_DATEFORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

.field public static final NAMESPACE_CP_URI:Ljava/lang/String; = "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

.field public static final NAMESPACE_DCTERMS_URI:Ljava/lang/String; = "http://purl.org/dc/terms/"

.field public static final NAMESPACE_DC_URI:Ljava/lang/String; = "http://purl.org/dc/elements/1.1/"


# instance fields
.field private final TIME_ZONE_PAT:Ljava/util/regex/Pattern;

.field private final TZ_DATE_FORMATS:[Ljava/lang/String;

.field protected category:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected contentStatus:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected contentType:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected created:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field protected creator:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected description:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected identifier:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected keywords:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected language:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected lastModifiedBy:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected lastPrinted:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field protected modified:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field protected revision:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected subject:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected title:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected version:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss.SS\'Z\'"

    const-string/jumbo v1, "yyyy-MM-dd"

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->DATE_FORMATS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 2

    const-string v0, "application/vnd.openxmlformats-package.core-properties+xml"

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    const-string/jumbo p1, "yyyy-MM-dd\'T\'HH:mm:ss.SSz"

    const-string/jumbo p2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSz"

    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ssz"

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.Sz"

    filled-new-array {v0, v1, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->TZ_DATE_FORMATS:[Ljava/lang/String;

    const-string p1, "([-+]\\d\\d):?(\\d\\d)"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->TIME_ZONE_PAT:Ljava/util/regex/Pattern;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->category:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->contentStatus:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->contentType:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->created:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->creator:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->description:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->identifier:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->keywords:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->language:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastModifiedBy:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastPrinted:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->modified:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->revision:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->subject:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->title:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->version:Ljava/util/Optional;

    return-void
.end method

.method public static synthetic a(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getDateValue(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDateValue(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    sget-object v1, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDateValue(Ljava/util/Optional;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/util/Date;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg5/l;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lg5/l;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static parseDateFormat([Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v4, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v3, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v4, p1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private parseDateValue(Ljava/lang/String;)Ljava/util/Optional;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->TIME_ZONE_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->TZ_DATE_FORMATS:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->parseDateFormat([Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    const-string v0, "Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v1, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->DATE_FORMATS:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->parseDateFormat([Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_4
    new-array v0, v2, [[Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->TZ_DATE_FORMATS:[Ljava/lang/String;

    aput-object p0, v0, v4

    sget-object p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->DATE_FORMATS:[Ljava/lang/String;

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/ddf/f0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ", "

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Date "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not well formatted, expected format in: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private parseStringValue(Ljava/lang/String;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public getCategoryProperty()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->category:Ljava/util/Optional;

    return-object p0
.end method

.method public getContentStatusProperty()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->contentStatus:Ljava/util/Optional;

    return-object p0
.end method

.method public getContentTypeProperty()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->contentType:Ljava/util/Optional;

    return-object p0
.end method

.method public getCreatedProperty()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->created:Ljava/util/Optional;

    return-object p0
.end method

.method public getCreatedPropertyString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->created:Ljava/util/Optional;

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getDateValue(Ljava/util/Optional;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCreatorProperty()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->creator:Ljava/util/Optional;

    return-object p0
.end method

.method public getDescriptionProperty()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->description:Ljava/util/Optional;

    return-object p0
.end method

.method public getIdentifierProperty()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->identifier:Ljava/util/Optional;

    return-object p0
.end method

.method public getInputStreamImpl()Ljava/io/InputStream;
    .locals 1

    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v0, "Operation not authorized. This part may only be manipulated using the getters and setters on PackagePropertiesPart"

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKeywordsProperty()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->keywords:Ljava/util/Optional;

    return-object p0
.end method

.method public getLanguageProperty()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->language:Ljava/util/Optional;

    return-object p0
.end method

.method public getLastModifiedByProperty()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastModifiedBy:Ljava/util/Optional;

    return-object p0
.end method

.method public getLastPrintedProperty()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastPrinted:Ljava/util/Optional;

    return-object p0
.end method

.method public getLastPrintedPropertyString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastPrinted:Ljava/util/Optional;

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getDateValue(Ljava/util/Optional;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModifiedProperty()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->modified:Ljava/util/Optional;

    return-object p0
.end method

.method public getModifiedPropertyString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->modified:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->modified:Ljava/util/Optional;

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getDateValue(Ljava/util/Optional;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getDateValue(Ljava/util/Optional;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOutputStreamImpl()Ljava/io/OutputStream;
    .locals 1

    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v0, "Can\'t use output stream to set properties !"

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRevisionProperty()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->revision:Ljava/util/Optional;

    return-object p0
.end method

.method public getSubjectProperty()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->subject:Ljava/util/Optional;

    return-object p0
.end method

.method public getTitleProperty()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->title:Ljava/util/Optional;

    return-object p0
.end method

.method public getVersionProperty()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->version:Ljava/util/Optional;

    return-object p0
.end method

.method public load(Ljava/io/InputStream;)Z
    .locals 0

    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string p1, "Operation not authorized. This part may only be manipulated using the getters and setters on PackagePropertiesPart"

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public save(Ljava/io/OutputStream;)Z
    .locals 0

    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string p1, "Operation not authorized. This part may only be manipulated using the getters and setters on PackagePropertiesPart"

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCategoryProperty(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->parseStringValue(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->category:Ljava/util/Optional;

    return-void
.end method

.method public setCategoryProperty(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->category:Ljava/util/Optional;

    return-void
.end method

.method public setContentStatusProperty(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->parseStringValue(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->contentStatus:Ljava/util/Optional;

    return-void
.end method

.method public setContentStatusProperty(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->contentStatus:Ljava/util/Optional;

    return-void
.end method

.method public setContentTypeProperty(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->parseStringValue(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->contentType:Ljava/util/Optional;

    return-void
.end method

.method public setContentTypeProperty(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->contentType:Ljava/util/Optional;

    return-void
.end method

.method public setCreatedProperty(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->parseDateValue(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->created:Ljava/util/Optional;

    return-void
.end method

.method public setCreatedProperty(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->created:Ljava/util/Optional;

    return-void
.end method

.method public setCreatorProperty(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->parseStringValue(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->creator:Ljava/util/Optional;

    return-void
.end method

.method public setCreatorProperty(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->creator:Ljava/util/Optional;

    return-void
.end method

.method public setDescriptionProperty(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->parseStringValue(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->description:Ljava/util/Optional;

    return-void
.end method

.method public setDescriptionProperty(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->description:Ljava/util/Optional;

    return-void
.end method

.method public setIdentifierProperty(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->parseStringValue(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->identifier:Ljava/util/Optional;

    return-void
.end method

.method public setIdentifierProperty(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->identifier:Ljava/util/Optional;

    return-void
.end method

.method public setKeywordsProperty(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->parseStringValue(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->keywords:Ljava/util/Optional;

    return-void
.end method

.method public setKeywordsProperty(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->keywords:Ljava/util/Optional;

    return-void
.end method

.method public setLanguageProperty(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->parseStringValue(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->language:Ljava/util/Optional;

    return-void
.end method

.method public setLanguageProperty(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->language:Ljava/util/Optional;

    return-void
.end method

.method public setLastModifiedByProperty(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->parseStringValue(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastModifiedBy:Ljava/util/Optional;

    return-void
.end method

.method public setLastModifiedByProperty(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastModifiedBy:Ljava/util/Optional;

    return-void
.end method

.method public setLastPrintedProperty(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->parseDateValue(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastPrinted:Ljava/util/Optional;

    return-void
.end method

.method public setLastPrintedProperty(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->lastPrinted:Ljava/util/Optional;

    return-void
.end method

.method public setModifiedProperty(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->parseDateValue(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->modified:Ljava/util/Optional;

    return-void
.end method

.method public setModifiedProperty(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->modified:Ljava/util/Optional;

    return-void
.end method

.method public setRevisionProperty(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->parseStringValue(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->revision:Ljava/util/Optional;

    return-void
.end method

.method public setRevisionProperty(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->revision:Ljava/util/Optional;

    return-void
.end method

.method public setSubjectProperty(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->parseStringValue(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->subject:Ljava/util/Optional;

    return-void
.end method

.method public setSubjectProperty(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->subject:Ljava/util/Optional;

    return-void
.end method

.method public setTitleProperty(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->parseStringValue(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->title:Ljava/util/Optional;

    return-void
.end method

.method public setTitleProperty(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->title:Ljava/util/Optional;

    return-void
.end method

.method public setVersionProperty(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->parseStringValue(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->version:Ljava/util/Optional;

    return-void
.end method

.method public setVersionProperty(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->version:Ljava/util/Optional;

    return-void
.end method
