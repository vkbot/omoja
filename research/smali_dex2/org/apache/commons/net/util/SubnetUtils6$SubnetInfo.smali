.class public final Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/util/SubnetUtils6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SubnetInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/net/util/SubnetUtils6;


# direct methods
.method private constructor <init>(Lorg/apache/commons/net/util/SubnetUtils6;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils6;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/net/util/SubnetUtils6;Lorg/apache/commons/net/util/SubnetUtils6$1;)V
    .registers 3

    .line 7
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;-><init>(Lorg/apache/commons/net/util/SubnetUtils6;)V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils6;

    .line 2
    .line 3
    # getter for: Lorg/apache/commons/net/util/SubnetUtils6;->address:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils6;->access$000(Lorg/apache/commons/net/util/SubnetUtils6;)Ljava/math/BigInteger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    # invokes: Lorg/apache/commons/net/util/SubnetUtils6;->format(Ljava/math/BigInteger;)Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils6;->access$100(Ljava/math/BigInteger;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getAddressCount()Ljava/math/BigInteger;
    .registers 3

    .line 1
    # getter for: Lorg/apache/commons/net/util/SubnetUtils6;->TWO:Ljava/math/BigInteger;
    invoke-static {}, Lorg/apache/commons/net/util/SubnetUtils6;->access$300()Ljava/math/BigInteger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils6;

    .line 6
    .line 7
    # getter for: Lorg/apache/commons/net/util/SubnetUtils6;->prefixLength:I
    invoke-static {v1}, Lorg/apache/commons/net/util/SubnetUtils6;->access$200(Lorg/apache/commons/net/util/SubnetUtils6;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    rsub-int v1, v1, 0x80

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getCidrSignature()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils6;

    .line 7
    .line 8
    # getter for: Lorg/apache/commons/net/util/SubnetUtils6;->address:Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/apache/commons/net/util/SubnetUtils6;->access$000(Lorg/apache/commons/net/util/SubnetUtils6;)Ljava/math/BigInteger;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    # invokes: Lorg/apache/commons/net/util/SubnetUtils6;->format(Ljava/math/BigInteger;)Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/net/util/SubnetUtils6;->access$100(Ljava/math/BigInteger;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "/"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils6;

    .line 25
    .line 26
    # getter for: Lorg/apache/commons/net/util/SubnetUtils6;->prefixLength:I
    invoke-static {v1}, Lorg/apache/commons/net/util/SubnetUtils6;->access$200(Lorg/apache/commons/net/util/SubnetUtils6;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public getHighAddress()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils6;

    .line 2
    .line 3
    # getter for: Lorg/apache/commons/net/util/SubnetUtils6;->high:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils6;->access$400(Lorg/apache/commons/net/util/SubnetUtils6;)Ljava/math/BigInteger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    # invokes: Lorg/apache/commons/net/util/SubnetUtils6;->format(Ljava/math/BigInteger;)Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils6;->access$100(Ljava/math/BigInteger;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getLowAddress()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils6;

    .line 2
    .line 3
    # getter for: Lorg/apache/commons/net/util/SubnetUtils6;->network:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils6;->access$500(Lorg/apache/commons/net/util/SubnetUtils6;)Ljava/math/BigInteger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    # invokes: Lorg/apache/commons/net/util/SubnetUtils6;->format(Ljava/math/BigInteger;)Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils6;->access$100(Ljava/math/BigInteger;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getNetworkAddress()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils6;

    .line 2
    .line 3
    # getter for: Lorg/apache/commons/net/util/SubnetUtils6;->network:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils6;->access$500(Lorg/apache/commons/net/util/SubnetUtils6;)Ljava/math/BigInteger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    # invokes: Lorg/apache/commons/net/util/SubnetUtils6;->format(Ljava/math/BigInteger;)Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils6;->access$100(Ljava/math/BigInteger;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getPrefixLength()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils6;

    .line 2
    .line 3
    # getter for: Lorg/apache/commons/net/util/SubnetUtils6;->prefixLength:I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils6;->access$200(Lorg/apache/commons/net/util/SubnetUtils6;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isInRange(Ljava/lang/String;)Z
    .registers 2

    .line 35
    # invokes: Lorg/apache/commons/net/util/SubnetUtils6;->toBytes(Ljava/lang/String;)[B
    invoke-static {p1}, Lorg/apache/commons/net/util/SubnetUtils6;->access$600(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;->isInRange([B)Z

    move-result p1

    return p1
.end method

.method public isInRange(Ljava/math/BigInteger;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils6;

    .line 6
    .line 7
    # getter for: Lorg/apache/commons/net/util/SubnetUtils6;->network:Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/apache/commons/net/util/SubnetUtils6;->access$500(Lorg/apache/commons/net/util/SubnetUtils6;)Ljava/math/BigInteger;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ltz v1, :cond_1e

    .line 16
    .line 17
    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils6;

    .line 18
    .line 19
    # getter for: Lorg/apache/commons/net/util/SubnetUtils6;->high:Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/apache/commons/net/util/SubnetUtils6;->access$400(Lorg/apache/commons/net/util/SubnetUtils6;)Ljava/math/BigInteger;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-gtz p1, :cond_1e

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_1e
    return v0
.end method

.method public isInRange(Ljava/net/Inet6Address;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 34
    :cond_4
    invoke-virtual {p1}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;->isInRange([B)Z

    move-result p1

    return p1
.end method

.method public isInRange([B)Z
    .registers 4

    if-eqz p1, :cond_13

    .line 32
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_8

    goto :goto_13

    .line 33
    :cond_8
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;->isInRange(Ljava/math/BigInteger;)Z

    move-result p1

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CIDR Signature:\t["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;->getCidrSignature()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "]\n  Network: ["

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;->getNetworkAddress()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "]\n  First address: ["

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;->getLowAddress()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "]\n  Last address: ["

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;->getHighAddress()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, "]\n  Address Count: ["

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils6$SubnetInfo;->getAddressCount()Ljava/math/BigInteger;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "]\n"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method
