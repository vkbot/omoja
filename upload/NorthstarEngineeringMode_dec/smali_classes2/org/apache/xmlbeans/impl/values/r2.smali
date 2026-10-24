.class public Lorg/apache/xmlbeans/impl/values/r2;
.super Lorg/apache/xmlbeans/impl/values/h2;
.source "SourceFile"

# interfaces
.implements Li5/i0;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final JAVA_BYTEARRAY:I = 0x32

.field private static final JAVA_CALENDAR:I = 0x31

.field private static final JAVA_DATE:I = 0x30

.field private static final JAVA_LIST:I = 0x33

.field private static final JAVA_NUMBER:I = 0x2f


# instance fields
.field private final _schemaType:Li5/c0;

.field private _textvalue:Ljava/lang/String;

.field private _value:Li5/i0;


# direct methods
.method public constructor <init>(Li5/c0;Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_textvalue:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/r2;->_schemaType:Li5/c0;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/h2;->initComplexType(ZZ)V

    return-void
.end method

.method private static check(Lorg/apache/xmlbeans/XmlObject;Li5/c0;)Z
    .locals 5

    invoke-interface {p1}, Li5/c0;->L0()[Li5/i0;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    invoke-interface {v4, p0}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method private static logical_overlap(Li5/c0;I)Z
    .locals 3

    const/16 v0, 0x2e

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_2

    invoke-interface {p0}, Li5/c0;->B0()I

    move-result v0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p0}, Li5/c0;->d0()Li5/c0;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->e()I

    move-result p0

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    invoke-interface {p0}, Li5/c0;->B0()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1

    :pswitch_1
    invoke-interface {p0}, Li5/c0;->B0()I

    move-result p1

    if-eq p1, v1, :cond_4

    return v2

    :cond_4
    invoke-interface {p0}, Li5/c0;->d0()Li5/c0;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->e()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_5

    const/4 p1, 0x5

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v1

    :pswitch_2
    invoke-interface {p0}, Li5/c0;->B0()I

    move-result p1

    if-eq p1, v1, :cond_6

    return v2

    :cond_6
    invoke-interface {p0}, Li5/c0;->d0()Li5/c0;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->e()I

    move-result p0

    packed-switch p0, :pswitch_data_1

    return v2

    :pswitch_3
    return v1

    :pswitch_4
    invoke-interface {p0}, Li5/c0;->B0()I

    move-result p1

    if-eq p1, v1, :cond_7

    return v2

    :cond_7
    invoke-interface {p0}, Li5/c0;->d0()Li5/c0;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->e()I

    move-result p0

    const/16 p1, 0xe

    if-eq p0, p1, :cond_8

    const/16 p1, 0x10

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v1

    :pswitch_5
    invoke-interface {p0}, Li5/c0;->B0()I

    move-result p1

    if-eq p1, v1, :cond_9

    return v2

    :cond_9
    invoke-interface {p0}, Li5/c0;->d0()Li5/c0;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->e()I

    move-result p0

    const/16 p1, 0x12

    if-eq p0, p1, :cond_a

    const/16 p1, 0x14

    if-eq p0, p1, :cond_a

    const/16 p1, 0x15

    if-eq p0, p1, :cond_a

    packed-switch p0, :pswitch_data_2

    return v2

    :cond_a
    :pswitch_6
    return v1

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private set_primitive(ILjava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_schemaType:Li5/c0;

    invoke-interface {v0}, Li5/c0;->x()[Li5/c0;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->has_store()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/xmlbeans/impl/values/x;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/xmlbeans/impl/values/x;-><init>(Lorg/apache/xmlbeans/impl/values/a0;)V

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/values/x;->t(Lorg/apache/xmlbeans/impl/values/x;)V

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    array-length v4, v0

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v6, v0, v5

    invoke-static {v6, p1}, Lorg/apache/xmlbeans/impl/values/r2;->logical_overlap(Li5/c0;I)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_3

    :try_start_1
    check-cast v6, Lorg/apache/xmlbeans/impl/schema/r;

    invoke-virtual {v6, p2, v2}, Lorg/apache/xmlbeans/impl/schema/r;->S(Ljava/lang/Object;Z)Li5/i0;

    move-result-object p1
    :try_end_1
    .catch Lorg/apache/xmlbeans/impl/values/x2; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    invoke-interface {p1}, Li5/i0;->getStringValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/r2;->_textvalue:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    :cond_2
    return-void

    :catch_0
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    if-nez v2, :cond_7

    :cond_5
    if-eqz v1, :cond_6

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    :cond_6
    new-instance p1, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_schemaType:Li5/c0;

    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p0, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "cvc-datatype-valid.1.2.3"

    invoke-direct {p1, p2, p0}, Lorg/apache/xmlbeans/impl/values/x2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_7
    move v2, v3

    goto :goto_0

    :goto_3
    if-eqz v1, :cond_8

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    :cond_8
    throw p0
.end method


# virtual methods
.method public compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_textvalue:Ljava/lang/String;

    return-object p0
.end method

.method public equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p0

    return p0
.end method

.method public getBigDecimalValue()Ljava/math/BigDecimal;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getBooleanValue()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-eqz p0, :cond_0

    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->getBooleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getByteArrayValue()[B
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->getByteArrayValue()[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getByteValue()B
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->getByteValue()B

    move-result p0

    :goto_0
    return p0
.end method

.method public getCalendarValue()Ljava/util/Calendar;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->getCalendarValue()Ljava/util/Calendar;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDateValue()Ljava/util/Date;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->getDateValue()Ljava/util/Date;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDoubleValue()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->getDoubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getEnumValue()Li5/h0;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->getEnumValue()Li5/h0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getFloatValue()F
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->getFloatValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getGDateValue()Li5/d;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->getGDateValue()Li5/d;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getGDurationValue()Li5/g;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->getGDurationValue()Li5/g;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getIntValue()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->getIntValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getListValue()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->getListValue()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLongValue()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->getLongValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getQNameValue()Ljavax/xml/namespace/QName;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->getQNameValue()Ljavax/xml/namespace/QName;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getShortValue()S
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->getShortValue()S

    move-result p0

    :goto_0
    return p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Li5/i0;->getStringValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public get_wscanon_rule()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public instanceType()Li5/c0;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->instanceType()Li5/c0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public is_defaultable_ws(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_text(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/x2; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method public schemaType()Li5/c0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_schemaType:Li5/c0;

    return-object p0
.end method

.method public set_BigDecimal(Ljava/math/BigDecimal;)V
    .locals 1

    const/16 v0, 0x2f

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_BigInteger(Ljava/math/BigInteger;)V
    .locals 1

    const/16 v0, 0x2f

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_ByteArray([B)V
    .locals 1

    const/16 v0, 0x32

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_Calendar(Ljava/util/Calendar;)V
    .locals 1

    const/16 v0, 0x31

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_Date(Ljava/util/Date;)V
    .locals 1

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_GDate(Li5/f;)V
    .locals 1

    invoke-interface {p1}, Li5/f;->e()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public set_GDuration(Li5/i;)V
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_QName(Ljavax/xml/namespace/QName;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_b64([B)V
    .locals 1

    const/16 v0, 0x32

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_boolean(Z)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_byte(B)V
    .locals 1

    const/16 v0, 0x2f

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_double(D)V
    .locals 1

    const/16 v0, 0x2f

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_enum(Li5/h0;)V
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_float(F)V
    .locals 1

    const/16 v0, 0x2f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_hex([B)V
    .locals 1

    const/16 v0, 0x32

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_int(I)V
    .locals 1

    const/16 v0, 0x2f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_list(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    const/16 v0, 0x33

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_long(J)V
    .locals 1

    const/16 v0, 0x2f

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_textvalue:Ljava/lang/String;

    return-void
.end method

.method public set_short(S)V
    .locals 1

    const/16 v0, 0x2f

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_schemaType:Li5/c0;

    invoke-interface {v0, p1}, Li5/c0;->P0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/values/x2;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_schemaType:Li5/c0;

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p0, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "string"

    filled-new-array {v1, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-datatype-valid.1.1"

    invoke-direct {v0, p1, p0}, Lorg/apache/xmlbeans/impl/values/x2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_textvalue:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/r2;->_textvalue:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/values/r2;->_schemaType:Li5/c0;

    invoke-interface {v1}, Li5/c0;->x()[Li5/c0;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->has_store()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    new-instance v2, Lorg/apache/xmlbeans/impl/values/x;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/apache/xmlbeans/impl/values/x;-><init>(Lorg/apache/xmlbeans/impl/values/a0;)V

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/values/x;->t(Lorg/apache/xmlbeans/impl/values/x;)V

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    if-nez v3, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_validateOnSet()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_2
    array-length v5, v1

    move v6, v4

    :goto_3
    if-ge v6, v5, :cond_6

    aget-object v7, v1, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    check-cast v7, Lorg/apache/xmlbeans/impl/schema/r;

    invoke-virtual {v7, p1, v3}, Lorg/apache/xmlbeans/impl/schema/r;->S(Ljava/lang/Object;Z)Li5/i0;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/xmlbeans/impl/values/r2;->_schemaType:Li5/c0;

    invoke-static {v7, v8}, Lorg/apache/xmlbeans/impl/values/r2;->check(Lorg/apache/xmlbeans/XmlObject;Li5/c0;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    iput-object v7, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;
    :try_end_1
    .catch Lorg/apache/xmlbeans/impl/values/x2; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    :cond_5
    return-void

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Troublesome union exception caused by unexpected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    if-nez v3, :cond_9

    :cond_7
    if-eqz v2, :cond_8

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    :cond_8
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_textvalue:Ljava/lang/String;

    new-instance v0, Lorg/apache/xmlbeans/impl/values/x2;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_schemaType:Li5/c0;

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p0, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-datatype-valid.1.2.3"

    invoke-direct {v0, p1, p0}, Lorg/apache/xmlbeans/impl/values/x2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_9
    move v3, v4

    goto :goto_1

    :goto_5
    if-eqz v2, :cond_a

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    :cond_a
    throw p0
.end method

.method public set_xmldate(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmldatetime(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmldecimal(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmldouble(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlduration(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlfloat(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlgday(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlgmonth(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x15

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlgmonthday(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlgyear(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlgyearmonth(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmltime(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/r2;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public validate_simpleval(Ljava/lang/String;Lj5/m;)V
    .locals 4

    const-string v0, "\' does not match any of the member types for "

    const-string v1, "\'"

    const-string v2, "union"

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-nez v3, :cond_0

    invoke-static {v1, p1, v0}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/r2;->schemaType()Li5/c0;

    move-result-object p0

    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p0, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, v2, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    check-cast v3, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {v3, p1, p2}, Lorg/apache/xmlbeans/impl/values/h2;->validate_simpleval(Ljava/lang/String;Lj5/m;)V

    return-void

    :catch_0
    invoke-static {v1, p1, v0}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/r2;->schemaType()Li5/c0;

    move-result-object p0

    sget-object v0, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p0, v0}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, v2, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public value_hash_code()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public xgetListValue()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Li5/i0;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/r2;->_value:Li5/i0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->xgetListValue()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method
