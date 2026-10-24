.class Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;
.super Ljava/text/Format;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/DataFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalDecimalFormatWithScale"
.end annotation


# static fields
.field private static final ONE_THOUSAND:Ljava/math/BigDecimal;

.field private static final endsWithCommas:Ljava/util/regex/Pattern;


# instance fields
.field private final df:Ljava/text/DecimalFormat;

.field private final divider:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "(,+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->endsWithCommas:Ljava/util/regex/Pattern;

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->ONE_THOUSAND:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    .locals 2

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->trimTrailingCommas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->df:Ljava/text/DecimalFormat;

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V

    sget-object p2, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->endsWithCommas:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->ONE_THOUSAND:Ljava/math/BigDecimal;

    invoke-virtual {p2, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->divider:Ljava/math/BigDecimal;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->divider:Ljava/math/BigDecimal;

    :goto_1
    return-void
.end method

.method private scaleInput(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->divider:Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    instance-of v1, p1, Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/math/BigDecimal;

    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0, p0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->divider:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot scaleInput of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method private static trimTrailingCommas(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ",+$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->scaleInput(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;->df:Ljava/text/DecimalFormat;

    invoke-virtual {p0, p1, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
