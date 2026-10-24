.class public abstract Lorg/apache/xmlbeans/impl/values/g;
.super Lorg/apache/xmlbeans/impl/values/h2;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final _schemaType:Li5/c0;

.field private _value:Li5/d;


# direct methods
.method public constructor <init>(Li5/c0;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/g;->_schemaType:Li5/c0;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/h2;->initComplexType(ZZ)V

    return-void
.end method

.method public static lex(Ljava/lang/String;Li5/c0;Lj5/m;)Li5/d;
    .locals 4

    const-string v0, "date"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Li5/d;

    invoke-direct {v2, p0}, Li5/d;-><init>(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget v3, v2, Li5/d;->x:I

    invoke-static {v3}, Li5/e;->B(I)I

    move-result v3

    invoke-interface {p1}, Li5/c0;->d0()Li5/c0;

    move-result-object p1

    invoke-interface {p1}, Li5/c0;->e()I

    move-result p1

    if-eq v3, p1, :cond_0

    const-string p1, "wrong type: "

    invoke-static {p1, p0}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-static {v2}, Li5/e;->F(Li5/f;)Z

    move-result p1

    if-nez p1, :cond_1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    return-object v1
.end method

.method public static validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)Li5/d;
    .locals 2

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/g;->lex(Ljava/lang/String;Li5/c0;Lj5/m;)Li5/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Li5/c0;->o0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p0}, Li5/c0;->P0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "date"

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-datatype-valid.1.1"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static validateValue(Li5/f;Li5/c0;Lj5/m;)V
    .locals 5

    invoke-interface {p0}, Li5/f;->e()I

    move-result v0

    invoke-interface {p1}, Li5/c0;->d0()Li5/c0;

    move-result-object v1

    invoke-interface {v1}, Li5/c0;->e()I

    move-result v1

    const-string v2, "date"

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Date ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") does not have the set of fields required for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getGDateValue()Li5/d;

    move-result-object v0

    invoke-interface {p0, v0}, Li5/f;->k(Li5/d;)I

    move-result v1

    if-gtz v1, :cond_1

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, p0, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cvc-minExclusive-valid"

    invoke-interface {p2, v1, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getGDateValue()Li5/d;

    move-result-object v0

    invoke-interface {p0, v0}, Li5/f;->k(Li5/d;)I

    move-result v1

    if-gez v1, :cond_2

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, p0, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cvc-minInclusive-valid"

    invoke-interface {p2, v1, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getGDateValue()Li5/d;

    move-result-object v0

    invoke-interface {p0, v0}, Li5/f;->k(Li5/d;)I

    move-result v1

    if-ltz v1, :cond_3

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, p0, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cvc-maxExclusive-valid"

    invoke-interface {p2, v1, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Li5/c0;->N0(I)Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/h2;->getGDateValue()Li5/d;

    move-result-object v0

    invoke-interface {p0, v0}, Li5/f;->k(Li5/d;)I

    move-result v1

    if-lez v1, :cond_4

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, p0, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cvc-maxInclusive-valid"

    invoke-interface {p2, v1, v0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-interface {p1}, Li5/c0;->L0()[Li5/i0;

    move-result-object v0

    if-eqz v0, :cond_7

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    check-cast v4, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/values/h2;->getGDateValue()Li5/d;

    move-result-object v4

    invoke-interface {p0, v4}, Li5/f;->k(Li5/d;)I

    move-result v4

    if-nez v4, :cond_5

    return-void

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p1, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-enumeration-valid"

    invoke-interface {p2, p1, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public compare_to(Lorg/apache/xmlbeans/XmlObject;)I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/g;->_value:Li5/d;

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getGDateValue()Li5/d;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Li5/e;->D(Li5/f;Li5/f;)I

    move-result p0

    return p0
.end method

.method public compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/g;->_value:Li5/d;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Li5/d;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/g;->_value:Li5/d;

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getGDateValue()Li5/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Li5/d;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCalendarValue()Ljava/util/Calendar;
    .locals 9

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/g;->_value:Li5/d;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Li5/o0;

    invoke-virtual {p0}, Li5/d;->q()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0xe

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget v1, p0, Li5/d;->g1:I

    if-nez v1, :cond_2

    sget-object v1, Li5/d;->n1:Ljava/util/TimeZone;

    goto :goto_1

    :cond_2
    iget v7, p0, Li5/d;->i1:I

    if-nez v7, :cond_4

    iget v7, p0, Li5/d;->h1:I

    if-gt v7, v6, :cond_4

    if-ltz v7, :cond_4

    if-gez v1, :cond_3

    sget-object v1, Li5/d;->o1:[Ljava/util/TimeZone;

    aget-object v1, v1, v7

    goto :goto_1

    :cond_3
    sget-object v1, Li5/d;->p1:[Ljava/util/TimeZone;

    aget-object v1, v1, v7

    goto :goto_1

    :cond_4
    const/16 v7, 0x9

    new-array v7, v7, [C

    const/16 v8, 0x47

    aput-char v8, v7, v3

    const/16 v8, 0x4d

    aput-char v8, v7, v5

    const/16 v8, 0x54

    aput-char v8, v7, v4

    if-gez v1, :cond_5

    const/16 v1, 0x2d

    goto :goto_0

    :cond_5
    const/16 v1, 0x2b

    :goto_0
    aput-char v1, v7, v2

    iget v1, p0, Li5/d;->h1:I

    const/4 v8, 0x4

    invoke-static {v7, v8, v1}, Li5/d;->c([CII)I

    const/4 v1, 0x6

    const/16 v8, 0x3a

    aput-char v8, v7, v1

    iget v1, p0, Li5/d;->i1:I

    const/4 v8, 0x7

    invoke-static {v7, v8, v1}, Li5/d;->c([CII)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    :goto_1
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    sget-object v1, Li5/o0;->r:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    invoke-virtual {p0}, Li5/d;->v()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Li5/d;->y:I

    if-lez v1, :cond_6

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v3, v3}, Ljava/util/Calendar;->set(II)V

    neg-int v1, v1

    :goto_2
    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    :cond_7
    invoke-virtual {p0}, Li5/d;->t()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Li5/d;->Z:I

    sub-int/2addr v1, v5

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    :cond_8
    invoke-virtual {p0}, Li5/d;->n()Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Li5/d;->b1:I

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    :cond_9
    invoke-virtual {p0}, Li5/d;->m()Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p0, Li5/d;->c1:I

    const/16 v4, 0xb

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, p0, Li5/d;->d1:I

    const/16 v4, 0xc

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, p0, Li5/d;->e1:I

    const/16 v4, 0xd

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Li5/d;->f1:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    if-lez v1, :cond_b

    iget-object v1, p0, Li5/d;->f1:Ljava/math/BigDecimal;

    if-nez v1, :cond_a

    move v1, v3

    goto :goto_3

    :cond_a
    sget-object v4, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v1, v2, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    :goto_3
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    :cond_b
    invoke-virtual {p0}, Li5/d;->q()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Li5/d;->g1:I

    const v2, 0xea60

    mul-int/2addr v1, v2

    iget v2, p0, Li5/d;->h1:I

    mul-int/lit8 v2, v2, 0x3c

    iget p0, p0, Li5/d;->i1:I

    add-int/2addr p0, v2

    mul-int/2addr p0, v1

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0x10

    invoke-virtual {v0, p0, v3}, Ljava/util/Calendar;->set(II)V

    :cond_c
    return-object v0
.end method

.method public getDateValue()Ljava/util/Date;
    .locals 8

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/g;->_value:Li5/d;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Li5/e;->G(Li5/f;)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x253d8c

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    iget-object v2, p0, Li5/d;->f1:Ljava/math/BigDecimal;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    sget-object v4, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    :goto_0
    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Li5/d;->e1:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    iget v0, p0, Li5/d;->d1:I

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v0, v0

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    iget v2, p0, Li5/d;->c1:I

    mul-int/lit16 v2, v2, 0xe10

    int-to-long v2, v2

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    invoke-virtual {p0}, Li5/d;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Li5/d;->i1:I

    iget v1, p0, Li5/d;->g1:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v6, v0

    mul-long/2addr v6, v4

    sub-long/2addr v2, v6

    iget p0, p0, Li5/d;->h1:I

    mul-int/2addr v1, p0

    mul-int/lit16 v1, v1, 0xe10

    int-to-long v0, v1

    mul-long/2addr v0, v4

    :goto_1
    sub-long/2addr v2, v0

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    int-to-long v0, p0

    goto :goto_1

    :goto_2
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method public getGDateValue()Li5/d;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/g;->_value:Li5/d;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public getIntValue()I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/g;->schemaType()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->d0()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->e()I

    move-result v0

    const/16 v1, 0x12

    const/16 v2, 0x15

    const/16 v3, 0x14

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/g;->_value:Li5/d;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    if-eq v0, v1, :cond_5

    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    iget p0, p0, Li5/d;->Z:I

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_4
    iget p0, p0, Li5/d;->b1:I

    return p0

    :cond_5
    iget p0, p0, Li5/d;->y:I

    return p0
.end method

.method public schemaType()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/g;->_schemaType:Li5/c0;

    return-object p0
.end method

.method public set_Calendar(Ljava/util/Calendar;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/g;->schemaType()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->d0()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->e()I

    move-result v0

    new-instance v1, Li5/e;

    new-instance v2, Li5/d;

    invoke-direct {v2, p1}, Li5/d;-><init>(Ljava/util/Calendar;)V

    invoke-direct {v1, v2}, Li5/e;-><init>(Li5/f;)V

    invoke-virtual {v1, v0}, Li5/e;->I(I)V

    new-instance p1, Li5/d;

    invoke-direct {p1, v1}, Li5/d;-><init>(Li5/f;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/g;->_schemaType:Li5/c0;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/g;->validateValue(Li5/f;Li5/c0;Lj5/m;)V

    :cond_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/g;->_value:Li5/d;

    return-void
.end method

.method public set_Date(Ljava/util/Date;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/values/g;->schemaType()Li5/c0;

    move-result-object v1

    invoke-interface {v1}, Li5/c0;->d0()Li5/c0;

    move-result-object v1

    invoke-interface {v1}, Li5/c0;->e()I

    move-result v1

    const/16 v2, 0x10

    const/16 v3, 0xe

    if-eq v1, v2, :cond_0

    if-ne v1, v3, :cond_5

    :cond_0
    if-eqz p1, :cond_5

    new-instance v2, Li5/e;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    const/4 v5, 0x1

    if-gez v4, :cond_1

    neg-int v4, v4

    const/4 v6, -0x1

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    const v7, 0xea60

    div-int/2addr v4, v7

    div-int/lit8 v8, v4, 0x3c

    mul-int/lit8 v9, v8, 0x3c

    sub-int/2addr v4, v9

    invoke-virtual {v2, v6, v8, v4}, Li5/e;->N(III)V

    add-int/2addr v4, v9

    mul-int/2addr v4, v6

    mul-int/2addr v4, v7

    sget-object v13, Li5/d;->j1:Ljava/math/BigDecimal;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v6, v6, v13}, Li5/e;->M(IIILjava/math/BigDecimal;)V

    iget v6, v2, Li5/e;->c:I

    or-int/2addr v3, v6

    iput v3, v2, Li5/e;->c:I

    const/16 v3, 0x7b2

    iput v3, v2, Li5/e;->r:I

    iput v5, v2, Li5/e;->x:I

    iput v5, v2, Li5/e;->y:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    int-to-long v3, v4

    add-long/2addr v14, v3

    const/4 v3, 0x3

    invoke-static {v14, v15, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v12, v13

    goto :goto_1

    :cond_2
    move-object v12, v3

    :goto_1
    move-object v4, v2

    invoke-virtual/range {v4 .. v12}, Li5/e;->A(IIIIIIILjava/math/BigDecimal;)V

    iget-object v3, v2, Li5/e;->d1:Ljava/math/BigDecimal;

    invoke-virtual {v3}, Ljava/math/BigDecimal;->signum()I

    move-result v3

    if-nez v3, :cond_3

    iput-object v13, v2, Li5/e;->d1:Ljava/math/BigDecimal;

    :cond_3
    invoke-virtual {v2, v1}, Li5/e;->I(I)V

    new-instance v1, Li5/d;

    invoke-direct {v1, v2}, Li5/d;-><init>(Li5/f;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/values/g;->_schemaType:Li5/c0;

    sget-object v3, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/g;->validateValue(Li5/f;Li5/c0;Lj5/m;)V

    :cond_4
    iput-object v1, v0, Lorg/apache/xmlbeans/impl/values/g;->_value:Li5/d;

    return-void

    :cond_5
    new-instance v0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public set_GDate(Li5/f;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/g;->schemaType()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->d0()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->e()I

    move-result v0

    invoke-interface {p1}, Li5/f;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Li5/d;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Li5/f;->e()I

    move-result v1

    if-ne v1, v0, :cond_0

    check-cast p1, Li5/d;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Li5/f;->e()I

    move-result v1

    if-eq v1, v0, :cond_1

    new-instance v1, Li5/e;

    invoke-direct {v1, p1}, Li5/e;-><init>(Li5/f;)V

    invoke-virtual {v1, v0}, Li5/e;->I(I)V

    move-object p1, v1

    :cond_1
    new-instance v0, Li5/d;

    invoke-direct {v0, p1}, Li5/d;-><init>(Li5/f;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/g;->_schemaType:Li5/c0;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/g;->validateValue(Li5/f;Li5/c0;Lj5/m;)V

    :cond_2
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/g;->_value:Li5/d;

    return-void
.end method

.method public set_int(I)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/g;->schemaType()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->d0()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->e()I

    move-result v0

    const/16 v1, 0x12

    const/16 v2, 0x15

    const/16 v3, 0x14

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    new-instance v4, Li5/e;

    invoke-direct {v4}, Li5/e;-><init>()V

    if-eq v0, v1, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, p1}, Li5/e;->L(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4, p1}, Li5/e;->J(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v4, p1}, Li5/e;->O(I)V

    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/values/g;->_schemaType:Li5/c0;

    sget-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {v4, p1, v0}, Lorg/apache/xmlbeans/impl/values/g;->validateValue(Li5/f;Li5/c0;Lj5/m;)V

    :cond_5
    new-instance p1, Li5/d;

    invoke-direct {p1, v4}, Li5/d;-><init>(Li5/f;)V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/g;->_value:Li5/d;

    return-void
.end method

.method public set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/g;->_value:Li5/d;

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/g;->_schemaType:Li5/c0;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/g;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)Li5/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/g;->_schemaType:Li5/c0;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/g;->lex(Ljava/lang/String;Li5/c0;Lj5/m;)Li5/d;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/g;->_schemaType:Li5/c0;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/g;->validateValue(Li5/f;Li5/c0;Lj5/m;)V

    :cond_1
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/g;->_value:Li5/d;

    return-void
.end method

.method public validate_simpleval(Ljava/lang/String;Lj5/m;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/g;->schemaType()Li5/c0;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/apache/xmlbeans/impl/values/g;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)Li5/d;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/g;->getGDateValue()Li5/d;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/g;->schemaType()Li5/c0;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lorg/apache/xmlbeans/impl/values/g;->validateValue(Li5/f;Li5/c0;Lj5/m;)V

    return-void
.end method

.method public value_hash_code()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/g;->_value:Li5/d;

    invoke-virtual {p0}, Li5/d;->hashCode()I

    move-result p0

    return p0
.end method
