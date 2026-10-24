.class public abstract Lorg/apache/xmlbeans/impl/values/l;
.super Lorg/apache/xmlbeans/impl/values/h2;
.source "SourceFile"


# static fields
.field private static final _maxlong:Ljava/math/BigInteger;

.field private static final _minlong:Ljava/math/BigInteger;


# instance fields
.field private _value:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/l;->_maxlong:Ljava/math/BigInteger;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/l;->_minlong:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;-><init>()V

    return-void
.end method

.method public static lex(Ljava/lang/String;Lj5/m;)Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "integer"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lj5/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
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

    const v1, 0xf4240

    if-le v0, v1, :cond_0

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/XmlObject;->compareTo(Ljava/lang/Object;)I

    move-result p0

    neg-int p0, p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/l;->_value:Ljava/math/BigInteger;

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    return p0
.end method

.method public compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/l;->_value:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

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

    const v1, 0xf4240

    if-le v0, v1, :cond_0

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/l;->_value:Ljava/math/BigInteger;

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getBigDecimalValue()Ljava/math/BigDecimal;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/l;->_value:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/l;->_value:Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/l;->_value:Ljava/math/BigInteger;

    return-object p0
.end method

.method public schemaType()Li5/c0;
    .locals 0

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->A:Lorg/apache/xmlbeans/impl/schema/r;

    return-object p0
.end method

.method public set_BigDecimal(Ljava/math/BigDecimal;)V
    .locals 0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/l;->_value:Ljava/math/BigInteger;

    return-void
.end method

.method public set_BigInteger(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/l;->_value:Ljava/math/BigInteger;

    return-void
.end method

.method public set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/l;->_value:Ljava/math/BigInteger;

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/values/l;->lex(Ljava/lang/String;Lj5/m;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/l;->set_BigInteger(Ljava/math/BigInteger;)V

    return-void
.end method

.method public value_hash_code()I
    .locals 6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/l;->_value:Ljava/math/BigInteger;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/l;->_maxlong:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/l;->_value:Ljava/math/BigInteger;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/l;->_minlong:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/l;->_value:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    const/16 p0, 0x20

    shr-long v2, v0, p0

    const-wide/16 v4, 0x13

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    long-to-int p0, v2

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/l;->_value:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    return p0
.end method
