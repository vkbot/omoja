.class public abstract Lorg/apache/xmlbeans/impl/values/d;
.super Lorg/apache/xmlbeans/impl/values/h2;
.source "SourceFile"


# instance fields
.field _value:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;-><init>()V

    return-void
.end method

.method public static compare(DD)I
    .locals 1

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmpl-double v0, p0, p2

    if-lez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static serialize(D)Ljava/lang/String;
    .locals 2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "INF"

    return-object p0

    :cond_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_1

    const-string p0, "-INF"

    return-object p0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "NaN"

    return-object p0

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static validateLexical(Ljava/lang/String;Lj5/m;)D
    .locals 1

    :try_start_0
    invoke-static {p0}, Ln5/f;->b(Ljava/lang/CharSequence;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    const-string v0, "double"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method


# virtual methods
.method public compare_to(Lorg/apache/xmlbeans/XmlObject;)I
    .locals 2

    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/values/d;->_value:D

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getDoubleValue()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lorg/apache/xmlbeans/impl/values/d;->compare(DD)I

    move-result p0

    return p0
.end method

.method public compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;
    .locals 0

    iget-wide p0, p0, Lorg/apache/xmlbeans/impl/values/d;->_value:D

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/values/d;->serialize(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 2

    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/values/d;->_value:D

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getDoubleValue()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lorg/apache/xmlbeans/impl/values/d;->compare(DD)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBigDecimalValue()Ljava/math/BigDecimal;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    new-instance v0, Ljava/math/BigDecimal;

    iget-wide v1, p0, Lorg/apache/xmlbeans/impl/values/d;->_value:D

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/values/d;->_value:D

    return-wide v0
.end method

.method public getFloatValue()F
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/values/d;->_value:D

    double-to-float p0, v0

    return p0
.end method

.method public schemaType()Li5/c0;
    .locals 0

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->x:Lorg/apache/xmlbeans/impl/schema/r;

    return-object p0
.end method

.method public set_BigDecimal(Ljava/math/BigDecimal;)V
    .locals 2

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/d;->set_double(D)V

    return-void
.end method

.method public set_BigInteger(Ljava/math/BigInteger;)V
    .locals 2

    invoke-virtual {p1}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/d;->set_double(D)V

    return-void
.end method

.method public set_double(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/xmlbeans/impl/values/d;->_value:D

    return-void
.end method

.method public set_float(F)V
    .locals 2

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/d;->set_double(D)V

    return-void
.end method

.method public set_long(J)V
    .locals 0

    long-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/d;->set_double(D)V

    return-void
.end method

.method public set_nil()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/xmlbeans/impl/values/d;->_value:D

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/values/d;->validateLexical(Ljava/lang/String;Lj5/m;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/d;->set_double(D)V

    return-void
.end method

.method public value_hash_code()I
    .locals 6

    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/values/d;->_value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 p0, 0x20

    shr-long v2, v0, p0

    const-wide/16 v4, 0x13

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    long-to-int p0, v2

    return p0
.end method
