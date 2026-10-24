.class public abstract Lorg/apache/xmlbeans/impl/values/p;
.super Lorg/apache/xmlbeans/impl/values/h2;
.source "SourceFile"


# static fields
.field private static final _max:Ljava/math/BigInteger;

.field private static final _min:Ljava/math/BigInteger;


# instance fields
.field private _value:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/p;->_max:Ljava/math/BigInteger;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/p;->_min:Ljava/math/BigInteger;

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

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/XmlObject;->compareTo(Ljava/lang/Object;)I

    move-result p0

    neg-int p0, p0

    return p0

    :cond_0
    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/values/p;->_value:J

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getLongValue()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;
    .locals 0

    iget-wide p0, p0, Lorg/apache/xmlbeans/impl/values/p;->_value:J

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

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p0

    return p0

    :cond_0
    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/values/p;->_value:J

    check-cast p1, Lorg/apache/xmlbeans/impl/values/h2;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getLongValue()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_1

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

    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/values/p;->_value:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/values/p;->_value:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getLongValue()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/values/p;->_value:J

    return-wide v0
.end method

.method public schemaType()Li5/c0;
    .locals 0

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->B:Lorg/apache/xmlbeans/impl/schema/r;

    return-object p0
.end method

.method public set_BigDecimal(Ljava/math/BigDecimal;)V
    .locals 0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/p;->set_BigInteger(Ljava/math/BigInteger;)V

    return-void
.end method

.method public set_BigInteger(Ljava/math/BigInteger;)V
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/values/p;->_max:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/values/p;->_min:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/xmlbeans/impl/values/p;->_value:J

    return-void

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public set_long(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/xmlbeans/impl/values/p;->_value:J

    return-void
.end method

.method public set_nil()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/xmlbeans/impl/values/p;->_value:J

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-object v0, Ln5/f;->a:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/p;->set_long(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    const-string v0, "long"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/x2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public value_hash_code()I
    .locals 6

    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/values/p;->_value:J

    const/16 p0, 0x20

    shr-long v2, v0, p0

    const-wide/16 v4, 0x13

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    long-to-int p0, v2

    return p0
.end method
