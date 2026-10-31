.class final Lorg/apache/commons/io/file/Counters$BigIntegerCounter;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/file/Counters$Counter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/Counters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BigIntegerCounter"
.end annotation


# instance fields
.field private value:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/file/Counters$1;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;-><init>()V

    return-void
.end method


# virtual methods
.method public add(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    .line 12
    .line 13
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-ne p0, p1, :cond_4

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    instance-of v0, p1, Lorg/apache/commons/io/file/Counters$Counter;

    .line 6
    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_a
    check-cast p1, Lorg/apache/commons/io/file/Counters$Counter;

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    .line 14
    .line 15
    invoke-interface {p1}, Lorg/apache/commons/io/file/Counters$Counter;->getBigInteger()Ljava/math/BigInteger;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public get()J
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/core/app/c;->c(Ljava/math/BigInteger;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLong()Ljava/lang/Long;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/core/app/c;->c(Ljava/math/BigInteger;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public increment()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    .line 2
    .line 3
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    .line 10
    .line 11
    return-void
.end method

.method public reset()V
    .registers 2

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    .line 4
    .line 5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/Counters$BigIntegerCounter;->value:Ljava/math/BigInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
