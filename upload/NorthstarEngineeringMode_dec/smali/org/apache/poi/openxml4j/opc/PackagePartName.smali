.class public final Lorg/apache/poi/openxml4j/opc/PackagePartName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/openxml4j/opc/PackagePartName;",
        ">;"
    }
.end annotation


# static fields
.field private static final RFC3986_PCHAR_AUTHORIZED_SUP:Ljava/lang/String; = ":@"

.field private static final RFC3986_PCHAR_SUB_DELIMS:Ljava/lang/String; = "!$&\'()*+,;="

.field private static final RFC3986_PCHAR_UNRESERVED_SUP:Ljava/lang/String; = "-._~"


# instance fields
.field private final isRelationship:Z

.field private final partNameURI:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    .line 8
    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfInvalidPartUri(Ljava/net/URI;)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_ROOT_URI:Ljava/net/URI;

    invoke-virtual {p1, v0}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    .line 10
    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationshipPartURI(Ljava/net/URI;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationship:Z

    return-void

    .line 11
    :cond_1
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;

    const-string p1, "OCP conformance must be check for ALL part name except special cases : [\'/\']"

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "partName argument is not a valid OPC part name !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/net/URI;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfInvalidPartUri(Ljava/net/URI;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p2, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_ROOT_URI:Ljava/net/URI;

    invoke-virtual {p2, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationshipPartURI(Ljava/net/URI;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationship:Z

    return-void

    .line 5
    :cond_1
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;

    const-string p1, "OCP conformance must be check for ALL part name except special cases : [\'/\']"

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkPCharCompliance(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isDigitOrLetter(C)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "-._~"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-gt v4, v5, :cond_5

    const-string v4, ":@"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gt v4, v5, :cond_5

    const-string v4, "!$&\'()*+,;="

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-le v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x25

    if-ne v2, v4, :cond_4

    sub-int v2, v0, v1

    const/4 v4, 0x2

    if-lt v2, v4, :cond_3

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isHexDigit(C)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isHexDigit(C)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_2

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isDigitOrLetter(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gt v1, v5, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v0, "A segment shall not contain percent-encoded unreserved characters. [M1.8]"

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v0, "A segment shall not contain percent-encoded forward slash (\'/\'), or backward slash (\'\\\') characters. [M1.7]"

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v1, "The segment "

    const-string v2, " contain invalid encoded character !"

    invoke-static {v1, p0, v2}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v0, "A segment shall not hold any characters other than pchar characters. [M1.6]"

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 5
    :cond_3
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v0

    :goto_1
    if-ge v0, v1, :cond_8

    if-ge v3, v2, :cond_8

    add-int/lit8 v4, v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v3, 0x1

    .line 10
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 11
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_7

    :goto_2
    if-ge v4, v1, :cond_4

    .line 12
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-ge v6, v2, :cond_5

    .line 13
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 14
    :cond_5
    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_6
    move v0, v4

    move v3, v6

    goto :goto_1

    :cond_7
    if-eq v5, v7, :cond_6

    sub-int/2addr v5, v7

    return v5

    :cond_8
    sub-int/2addr v1, v2

    return v1
.end method

.method public static compare(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePartName;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_1
    invoke-static {p0, v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static isDigitOrLetter(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_3

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isHexDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_3

    const/16 v0, 0x66

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRelationshipPartURI(Ljava/net/URI;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "^.*/_rels/.*\\.rels$"

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "partUri"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static throwExceptionIfAbsoluteUri(Ljava/net/URI;)V
    .locals 3

    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Absolute URI forbidden: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwExceptionIfEmptyURI(Ljava/net/URI;)V
    .locals 3

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A part name shall not be empty [M1.1]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "partURI"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static throwExceptionIfInvalidPartUri(Ljava/net/URI;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfEmptyURI(Ljava/net/URI;)V

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfAbsoluteUri(Ljava/net/URI;)V

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfPartNameNotStartsWithForwardSlashChar(Ljava/net/URI;)V

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfPartNameEndsWithForwardSlashChar(Ljava/net/URI;)V

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfPartNameHaveInvalidSegments(Ljava/net/URI;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "partUri"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static throwExceptionIfPartNameEndsWithForwardSlashChar(Ljava/net/URI;)V
    .locals 3

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A part name shall not have a forward slash as the last character [M1.5]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private static throwExceptionIfPartNameHaveInvalidSegments(Ljava/net/URI;)V
    .locals 7

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const-string v3, "A part name shall not have empty segments [M1.3]: "

    const/4 v4, 0x1

    if-lt v1, v4, :cond_4

    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, v0, v4

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "\\\\."

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->checkPCharCompliance(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A segment shall include at least one non-dot character. [M1.10]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A segment shall not end with a dot (\'.\') character [M1.9]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void

    :cond_4
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "partUri"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static throwExceptionIfPartNameNotStartsWithForwardSlashChar(Ljava/net/URI;)V
    .locals 3

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A part name shall start with a forward slash (\'/\') character [M1.4]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->compareTo(Lorg/apache/poi/openxml4j/opc/PackagePartName;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/poi/openxml4j/opc/PackagePartName;)I
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->compare(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePartName;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/openxml4j/opc/PackagePartName;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getURI()Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isRelationshipPartURI()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationship:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
