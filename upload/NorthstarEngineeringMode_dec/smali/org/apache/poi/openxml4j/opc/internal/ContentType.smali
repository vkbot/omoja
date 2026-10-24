.class public final Lorg/apache/poi/openxml4j/opc/internal/ContentType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final patternParams:Ljava/util/regex/Pattern;

.field private static final patternTypeSubType:Ljava/util/regex/Pattern;

.field private static final patternTypeSubTypeParams:Ljava/util/regex/Pattern;


# instance fields
.field private final parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final subType:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^([\\x21-\\x7E&&[^()<>@,;:\\\\/\"\\[\\]?={}\\x20\\x09]]+)/([\\x21-\\x7E&&[^()<>@,;:\\\\/\"\\[\\]?={}\\x20\\x09]]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->patternTypeSubType:Ljava/util/regex/Pattern;

    const-string v0, "^([\\x21-\\x7E&&[^()<>@,;:\\\\/\"\\[\\]?={}\\x20\\x09]]+)/([\\x21-\\x7E&&[^()<>@,;:\\\\/\"\\[\\]?={}\\x20\\x09]]+)(;([\\x21-\\x7E&&[^()<>@,;:\\\\/\"\\[\\]?={}\\x20\\x09]]+)=(\"?[\\x21-\\x7E&&[^()<>@,;:\\\\/\"\\[\\]?={}\\x20\\x09]]+\"?))*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->patternTypeSubTypeParams:Ljava/util/regex/Pattern;

    const-string v0, ";([\\x21-\\x7E&&[^()<>@,;:\\\\/\"\\[\\]?={}\\x20\\x09]]+)=(\"?[\\x21-\\x7E&&[^()<>@,;:\\\\/\"\\[\\]?={}\\x20\\x09]]+\"?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->patternParams:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->patternTypeSubType:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->patternTypeSubTypeParams:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->subType:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->parameters:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    sget-object v3, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->patternParams:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->parameters:Ljava/util/Map;

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, ""

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->type:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->subType:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->parameters:Ljava/util/Map;

    :cond_2
    return-void

    :cond_3
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v0, "The specified content type \'"

    const-string v1, "\' is not compliant with RFC 2616: malformed content type."

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->parameters:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getParameterKeys()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->parameters:Ljava/util/Map;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->subType:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->type:Ljava/lang/String;

    return-object p0
.end method

.method public hasParameters()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->parameters:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->type:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->subType:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->parameters:Ljava/util/Map;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString(Z)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;->parameters:Ljava/util/Map;

    .line 6
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    const/16 v1, 0x3b

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
