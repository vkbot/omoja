.class public abstract Lorg/apache/xmlbeans/impl/values/j;
.super Lorg/apache/xmlbeans/impl/values/h2;
.source "SourceFile"


# static fields
.field static final _max:Ljava/math/BigInteger;

.field static final _min:Ljava/math/BigInteger;


# instance fields
.field private _value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/j;->_max:Ljava/math/BigInteger;

    const-wide/32 v0, -0x80000000

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/j;->_min:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;-><init>()V

    return-void
.end method


# virtual methods
.method public compare_to(Lorg/apache/xmlbeans/XmlObject;)I
    .locals 2

    move-object v0, p1

    check-cast v0, Li5/g0;

    invoke-interface {v0}, Li5/g0;->instanceType()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->z0()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/XmlObject;->compareTo(Ljava/lang/Object;)I

    move-result p0

    neg-int p0, p0

    return p0

    :cond_0
    iget p0, p0, Lorg/apache/xmlbeans/impl/values/j;->_value:I

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getIntValue()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/j;->_value:I

    int-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 2

    move-object v0, p1

    check-cast v0, Li5/g0;

    invoke-interface {v0}, Li5/g0;->instanceType()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->z0()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lorg/apache/xmlbeans/impl/values/j;->_value:I

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getIntValue()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBigDecimalValue()Ljava/math/BigDecimal;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/j;->_value:I

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/j;->_value:I

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getIntValue()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/j;->_value:I

    return p0
.end method

.method public getLongValue()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/j;->_value:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public schemaType()Li5/c0;
    .locals 0

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->C:Lorg/apache/xmlbeans/impl/schema/r;

    return-object p0
.end method

.method public set_BigDecimal(Ljava/math/BigDecimal;)V
    .locals 0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/j;->set_BigInteger(Ljava/math/BigInteger;)V

    return-void
.end method

.method public set_BigInteger(Ljava/math/BigInteger;)V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/values/j;->_max:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/values/j;->_min:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/j;->set_int(I)V

    return-void

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public set_int(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlbeans/impl/values/j;->_value:I

    return-void
.end method

.method public set_long(J)V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/j;->set_int(I)V

    return-void

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/j;->_value:I

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Ln5/f;->d(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/j;->set_int(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    const-string v0, "int"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/x2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public value_hash_code()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/j;->_value:I

    return p0
.end method
