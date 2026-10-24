.class public final Ls5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Le5/g;


# instance fields
.field public final a:Lnet/sf/saxon/query/XQueryExpression;

.field public final b:Ljava/lang/String;

.field public final c:Lnet/sf/saxon/Configuration;

.field public d:Lm5/h;

.field public e:Li5/z1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ls5/c;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Ls5/c;->f:Le5/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Li5/z1;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Ls5/c;->e:Li5/z1;

    new-instance v0, Lnet/sf/saxon/Configuration;

    invoke-direct {v0}, Lnet/sf/saxon/Configuration;-><init>()V

    iput-object v0, p0, Ls5/c;->c:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->newStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object v0

    sget-object v1, Li5/z1$a;->x1:Li5/z1$a;

    iget-object p4, p4, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map;

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lnet/sf/saxon/om/NamespaceUri;->of(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceUri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/query/StaticQueryContext;->declareNamespace(Ljava/lang/String;Lnet/sf/saxon/om/NamespaceUri;)V

    goto :goto_0

    :cond_0
    iput-object p2, p0, Ls5/c;->b:Ljava/lang/String;

    :try_start_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " declare variable $"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " external;"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->compileQuery(Ljava/lang/String;)Lnet/sf/saxon/query/XQueryExpression;

    move-result-object p1

    iput-object p1, p0, Ls5/c;->a:Lnet/sf/saxon/query/XQueryExpression;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Li5/c2;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static b(Ljava/lang/Object;)Li5/c0;
    .locals 1

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object p0, Li5/m1;->V:Li5/c0;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    sget-object p0, Li5/u0;->A:Li5/c0;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    sget-object p0, Li5/p1;->a0:Li5/c0;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    sget-object p0, Li5/b1;->H:Li5/c0;

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_4

    sget-object p0, Li5/s0;->z:Li5/c0;

    goto :goto_0

    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    sget-object p0, Li5/m0;->t:Li5/c0;

    goto :goto_0

    :cond_5
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object p0, Li5/g2;->m0:Li5/c0;

    goto :goto_0

    :cond_6
    instance-of p0, p0, Ljava/util/Date;

    if-eqz p0, :cond_7

    sget-object p0, Li5/q0;->v:Li5/c0;

    goto :goto_0

    :cond_7
    sget-object p0, Li5/i0;->s:Li5/c0;

    :goto_0
    return-object p0
.end method

.method public static d(Ljava/lang/Object;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/Item;
    .locals 12

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    new-instance p1, Lnet/sf/saxon/value/HexBinaryValue;

    check-cast p0, [B

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/HexBinaryValue;-><init>([B)V

    return-object p1

    :cond_2
    instance-of v0, p0, Ljava/lang/Byte;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    new-instance p1, Lnet/sf/saxon/value/Int64Value;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    int-to-long v2, p0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->BYTE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p1, v2, v3, p0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(JLnet/sf/saxon/type/BuiltInAtomicType;Z)V

    return-object p1

    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_4

    new-instance p1, Lnet/sf/saxon/value/FloatValue;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/FloatValue;-><init>(F)V

    return-object p1

    :cond_4
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_5

    new-instance p1, Lnet/sf/saxon/value/DoubleValue;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    return-object p1

    :cond_5
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    new-instance p1, Lnet/sf/saxon/value/Int64Value;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v2, p0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->INT:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p1, v2, v3, p0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(JLnet/sf/saxon/type/BuiltInAtomicType;Z)V

    return-object p1

    :cond_6
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_7

    new-instance p1, Lnet/sf/saxon/value/Int64Value;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->LONG:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p1, v2, v3, p0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(JLnet/sf/saxon/type/BuiltInAtomicType;Z)V

    return-object p1

    :cond_7
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_8

    new-instance p1, Lnet/sf/saxon/value/Int64Value;

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    int-to-long v2, p0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->SHORT:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p1, v2, v3, p0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(JLnet/sf/saxon/type/BuiltInAtomicType;Z)V

    return-object p1

    :cond_8
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_9

    new-instance p1, Lnet/sf/saxon/value/StringValue;

    check-cast p0, Ljava/lang/String;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_9
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_a

    new-instance p1, Lnet/sf/saxon/value/BigDecimalValue;

    check-cast p0, Ljava/math/BigDecimal;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    return-object p1

    :cond_a
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_b

    new-instance p1, Lnet/sf/saxon/value/BigIntegerValue;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    :cond_b
    instance-of v0, p0, Lnet/sf/saxon/value/SaxonDuration;

    if-eqz v0, :cond_c

    check-cast p0, Lnet/sf/saxon/value/SaxonDuration;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SaxonDuration;->getDurationValue()Lnet/sf/saxon/value/DurationValue;

    move-result-object p0

    return-object p0

    :cond_c
    instance-of v0, p0, Ljavax/xml/datatype/Duration;

    if-eqz v0, :cond_e

    check-cast p0, Ljavax/xml/datatype/Duration;

    new-instance p1, Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v0

    if-ltz v0, :cond_d

    const/4 v1, 0x1

    :cond_d
    move v3, v1

    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getYears()I

    move-result v4

    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getMonths()I

    move-result v5

    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getDays()I

    move-result v6

    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getHours()I

    move-result v7

    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getMinutes()I

    move-result v8

    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getSeconds()I

    move-result p0

    int-to-long v9, p0

    const/4 v11, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lnet/sf/saxon/value/DurationValue;-><init>(ZIIIIIJI)V

    return-object p1

    :cond_e
    instance-of v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;

    if-eqz v0, :cond_f

    check-cast p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->toCalendarValue()Lnet/sf/saxon/value/CalendarValue;

    move-result-object p0

    return-object p0

    :cond_f
    instance-of v0, p0, Ljavax/xml/datatype/XMLGregorianCalendar;

    if-eqz v0, :cond_19

    move-object v0, p0

    check-cast v0, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getXMLSchemaType()Ljavax/xml/namespace/QName;

    move-result-object v0

    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->DATETIME:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/value/DateTimeValue;->makeDateTimeValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_10
    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->DATE:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/value/DateValue;->makeDateValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_11
    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->TIME:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/TimeValue;->makeTimeValue(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_12
    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->GYEAR:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GYearValue;->makeGYearValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_13
    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->GYEARMONTH:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GYearMonthValue;->makeGYearMonthValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_14
    sget-object p1, Ljavax/xml/datatype/DatatypeConstants;->GMONTH:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "--"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_15
    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/GMonthValue;->makeGMonthValue(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_16
    sget-object p1, Ljavax/xml/datatype/DatatypeConstants;->GMONTHDAY:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/GMonthDayValue;->makeGMonthDayValue(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_17
    sget-object p1, Ljavax/xml/datatype/DatatypeConstants;->GDAY:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/GDayValue;->makeGDayValue(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_18
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Unknown Gregorian date type"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_19
    instance-of v0, p0, Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_1a

    check-cast p0, Ljavax/xml/namespace/QName;

    new-instance p1, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/om/NamespaceUri;->of(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceUri;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Lnet/sf/saxon/om/NamespaceUri;Ljava/lang/String;)V

    return-object p1

    :cond_1a
    instance-of v0, p0, Ljava/net/URI;

    if-eqz v0, :cond_1b

    new-instance p1, Lnet/sf/saxon/value/AnyURIValue;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/AnyURIValue;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1b
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1d

    new-instance v0, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {v0}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Ls5/c;->d(Ljava/lang/Object;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/Item;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/value/AtomicValue;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Ls5/c;->d(Ljava/lang/Object;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/Item;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/ma/map/HashTrieMap;->initialPut(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Z

    goto :goto_0

    :cond_1c
    return-object v0

    :cond_1d
    new-instance p1, Lnet/sf/saxon/value/ObjectValue;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/ObjectValue;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/util/Map;Lm5/o0$a;)Ljava/util/List;
    .locals 8

    iget-object v0, p0, Ls5/c;->b:Ljava/lang/String;

    const-string v1, ""

    iget-object v2, p0, Ls5/c;->c:Lnet/sf/saxon/Configuration;

    :try_start_0
    check-cast p2, Lorg/w3c/dom/Node;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    move-object v3, p2

    check-cast v3, Lorg/w3c/dom/Document;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    :goto_0
    new-instance v4, Lnet/sf/saxon/dom/DocumentWrapper;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v2}, Lnet/sf/saxon/dom/DocumentWrapper;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v4, p2}, Lnet/sf/saxon/dom/DocumentWrapper;->wrap(Lorg/w3c/dom/Node;)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p2

    invoke-static {v1}, Lnet/sf/saxon/om/NamespaceUri;->of(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceUri;

    move-result-object v3

    new-instance v5, Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-direct {v5, v2}, Lnet/sf/saxon/query/DynamicQueryContext;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v5, p2}, Lnet/sf/saxon/query/DynamicQueryContext;->setContextItem(Lnet/sf/saxon/om/Item;)V

    new-instance v6, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v6, v1, v3, v0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Lnet/sf/saxon/om/NamespaceUri;Ljava/lang/String;)V

    invoke-virtual {v5, v6, p2}, Lnet/sf/saxon/query/DynamicQueryContext;->setParameter(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    new-instance v6, Lnet/sf/saxon/om/StructuredQName;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v1, v3, v7}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Lnet/sf/saxon/om/NamespaceUri;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    instance-of v7, p2, Li5/j2;

    if-eqz v7, :cond_1

    check-cast p2, Li5/j2;

    invoke-interface {p2}, Li5/j2;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-virtual {v4, p2}, Lnet/sf/saxon/dom/DocumentWrapper;->wrap(Lorg/w3c/dom/Node;)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p2

    invoke-virtual {v5, v6, p2}, Lnet/sf/saxon/query/DynamicQueryContext;->setParameter(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {p2, v2}, Ls5/c;->d(Ljava/lang/Object;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/Item;

    move-result-object p2

    invoke-virtual {v5, v6, p2}, Lnet/sf/saxon/query/DynamicQueryContext;->setParameter(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;)V
    :try_end_1
    .catch Ljavax/xml/xpath/XPathException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    iget-object p0, p0, Ls5/c;->a:Lnet/sf/saxon/query/XQueryExpression;

    invoke-virtual {p0, v5}, Lnet/sf/saxon/query/XQueryExpression;->evaluate(Lnet/sf/saxon/query/DynamicQueryContext;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p2

    instance-of v1, p2, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v1, :cond_3

    check-cast p2, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p2}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/dom/NodeOverNodeInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_4
    return-object p0

    :goto_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Error binding "

    invoke-static {p2, v0}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final c(Lm5/z0;Lorg/w3c/dom/Node;)Lm5/h;
    .locals 4

    new-instance v0, Lm5/h$a;

    iget-object v1, p0, Ls5/c;->e:Li5/z1;

    invoke-direct {v0, p1, v1}, Lm5/h$a;-><init>(Lm5/z0;Li5/z1;)V

    :try_start_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance p1, Ljavax/xml/namespace/QName;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lm5/h$a;->b(Ljava/lang/String;Ljavax/xml/namespace/QName;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, v0}, Lm5/z0;->D(Lorg/w3c/dom/Node;Lm5/h$a;)V

    :goto_0
    invoke-virtual {v0}, Lm5/h$a;->e()Lm5/h;

    move-result-object p1

    iget-object p2, p0, Ls5/c;->e:Li5/z1;

    invoke-static {p1, p2}, Lm5/z0;->c(Lm5/h;Li5/z1;)V

    iget-object p0, p0, Ls5/c;->e:Li5/z1;

    const/4 p2, 0x0

    invoke-static {p1, p2, p0}, Lm5/z0;->d(Lm5/h;Li5/c0;Li5/z1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Li5/c2;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
