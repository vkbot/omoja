.class public abstract Lorg/apache/xmlbeans/impl/values/f;
.super Lorg/apache/xmlbeans/impl/values/h2;
.source "SourceFile"


# instance fields
.field public c:F


# direct methods
.method public static M0(FF)I
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final compare_to(Lorg/apache/xmlbeans/XmlObject;)I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/f;->c:F

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getFloatValue()F

    move-result p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/values/f;->M0(FF)I

    move-result p0

    return p0
.end method

.method public final compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/f;->c:F

    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float p1, p0, p1

    if-nez p1, :cond_0

    const-string p0, "INF"

    goto :goto_0

    :cond_0
    const/high16 p1, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float p1, p0, p1

    if-nez p1, :cond_1

    const-string p0, "-INF"

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "NaN"

    goto :goto_0

    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/f;->c:F

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getFloatValue()F

    move-result p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/values/f;->M0(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getBigDecimalValue()Ljava/math/BigDecimal;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    new-instance v0, Ljava/math/BigDecimal;

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/f;->c:F

    float-to-double v1, p0

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    return-object v0
.end method

.method public final getDoubleValue()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/f;->c:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public final getFloatValue()F
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/f;->c:F

    return p0
.end method

.method public schemaType()Li5/c0;
    .locals 0

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->w:Lorg/apache/xmlbeans/impl/schema/r;

    return-object p0
.end method

.method public final set_BigDecimal(Ljava/math/BigDecimal;)V
    .locals 0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/f;->set_float(F)V

    return-void
.end method

.method public final set_BigInteger(Ljava/math/BigInteger;)V
    .locals 0

    invoke-virtual {p1}, Ljava/math/BigInteger;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/f;->set_float(F)V

    return-void
.end method

.method public final set_double(D)V
    .locals 0

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/f;->set_float(F)V

    return-void
.end method

.method public set_float(F)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlbeans/impl/values/f;->c:F

    return-void
.end method

.method public final set_long(J)V
    .locals 0

    long-to-float p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/f;->set_float(F)V

    return-void
.end method

.method public final set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/f;->c:F

    return-void
.end method

.method public final set_text(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    :try_start_0
    invoke-static {p1}, Ln5/f;->c(Ljava/lang/CharSequence;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "float"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 p1, 0x7fc00000    # Float.NaN

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/f;->set_float(F)V

    return-void
.end method

.method public final value_hash_code()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/f;->c:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    return p0
.end method
