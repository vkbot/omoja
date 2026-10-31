.class public Lorg/apache/commons/net/util/SubnetUtils;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;,
        Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;,
        Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterable;
    }
.end annotation


# static fields
.field private static final ADDRESS_PATTERN:Ljava/util/regex/Pattern;

.field private static final CIDR_PATTERN:Ljava/util/regex/Pattern;

.field private static final IP_ADDRESS:Ljava/lang/String; = "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})"

.field private static final NBITS:I = 0x20

.field private static final PARSE_FAIL:Ljava/lang/String; = "Could not parse [%s]"

.field private static final SLASH_FORMAT:Ljava/lang/String; = "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\\d{1,2})"


# instance fields
.field private final address:I

.field private final broadcast:I

.field private inclusiveHostCount:Z

.field private final netmask:I

.field private final network:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/apache/commons/net/util/SubnetUtils;->ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\\d{1,2})"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/apache/commons/net/util/SubnetUtils;->CIDR_PATTERN:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/apache/commons/net/util/SubnetUtils;->CIDR_PATTERN:Ljava/util/regex/Pattern;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_37

    .line 15
    .line 16
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->matchAddress(Ljava/util/regex/Matcher;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    .line 21
    .line 22
    const/4 v1, 0x5

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    const/16 v2, 0x20

    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;->rangeCheck(III)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    sub-int/2addr v2, v0

    .line 39
    const-wide v0, 0xffffffffL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    shl-long/2addr v0, v2

    .line 45
    long-to-int v0, v0

    .line 46
    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    .line 47
    .line 48
    and-int/2addr p1, v0

    .line 49
    iput p1, p0, Lorg/apache/commons/net/util/SubnetUtils;->network:I

    .line 50
    .line 51
    not-int v0, v0

    .line 52
    or-int/2addr p1, v0

    .line 53
    iput p1, p0, Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I

    .line 54
    .line 55
    return-void

    .line 56
    :cond_37
    const-string v0, "Could not parse ["

    .line 57
    .line 58
    const-string v1, "]"

    .line 59
    .line 60
    invoke-static {v0, p1, v1}, Lai/onnxruntime/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Lorg/apache/commons/net/util/SubnetUtils;->toInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    .line 71
    invoke-static {p2}, Lorg/apache/commons/net/util/SubnetUtils;->toInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    neg-int v1, v0

    and-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    not-int v2, v0

    if-ne v1, v2, :cond_1e

    and-int/2addr p1, v0

    .line 72
    iput p1, p0, Lorg/apache/commons/net/util/SubnetUtils;->network:I

    not-int p2, v0

    or-int/2addr p1, p2

    .line 73
    iput p1, p0, Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I

    return-void

    .line 74
    :cond_1e
    const-string p1, "Could not parse ["

    const-string v0, "]"

    .line 75
    invoke-static {p1, p2, v0}, Lai/onnxruntime/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public static synthetic access$300(I)[I
    .registers 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/net/util/SubnetUtils;->toArray4(I)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$400([I)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$500(Ljava/lang/String;)I
    .registers 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/net/util/SubnetUtils;->toInteger(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$600(Lorg/apache/commons/net/util/SubnetUtils;)I
    .registers 1

    .line 1
    iget p0, p0, Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$700(Lorg/apache/commons/net/util/SubnetUtils;)I
    .registers 1

    .line 1
    iget p0, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$800(Lorg/apache/commons/net/util/SubnetUtils;)I
    .registers 1

    .line 1
    iget p0, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$900(Lorg/apache/commons/net/util/SubnetUtils;)I
    .registers 1

    .line 1
    iget p0, p0, Lorg/apache/commons/net/util/SubnetUtils;->network:I

    .line 2
    .line 3
    return p0
.end method

.method private static format([I)Ljava/lang/String;
    .registers 5

    .line 1
    array-length v0, p0

    .line 2
    add-int/lit8 v0, v0, -0x1

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_9
    aget v3, p0, v2

    .line 11
    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    if-ne v2, v0, :cond_15

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_15
    const/16 v3, 0x2e

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_9
.end method

.method private static matchAddress(Ljava/util/regex/Matcher;)I
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    move v2, v0

    .line 4
    :goto_3
    const/4 v3, 0x4

    .line 5
    if-gt v1, v3, :cond_1e

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/16 v4, 0xff

    .line 16
    .line 17
    invoke-static {v3, v0, v4}, Lorg/apache/commons/net/util/SubnetUtils;->rangeCheck(III)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    and-int/2addr v3, v4

    .line 22
    rsub-int/lit8 v4, v1, 0x4

    .line 23
    .line 24
    mul-int/lit8 v4, v4, 0x8

    .line 25
    .line 26
    shl-int/2addr v3, v4

    .line 27
    or-int/2addr v2, v3

    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_1e
    return v2
.end method

.method private static rangeCheck(III)I
    .registers 6

    .line 1
    if-lt p0, p1, :cond_5

    .line 2
    .line 3
    if-gt p0, p2, :cond_5

    .line 4
    .line 5
    return p0

    .line 6
    :cond_5
    const-string v0, "] not in range ["

    .line 7
    .line 8
    const-string v1, ","

    .line 9
    .line 10
    const-string v2, "Value ["

    .line 11
    .line 12
    invoke-static {v2, p0, p1, v0, v1}, Lai/onnxruntime/a;->v(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p1, "]"

    .line 17
    .line 18
    invoke-static {p0, p1, p2}, Lai/onnxruntime/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method private static toArray4(I)[I
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    :goto_4
    if-ltz v1, :cond_16

    .line 6
    .line 7
    aget v2, v0, v1

    .line 8
    .line 9
    rsub-int/lit8 v3, v1, 0x3

    .line 10
    .line 11
    mul-int/lit8 v3, v3, 0x8

    .line 12
    .line 13
    ushr-int v3, p0, v3

    .line 14
    .line 15
    and-int/lit16 v3, v3, 0xff

    .line 16
    .line 17
    or-int/2addr v2, v3

    .line 18
    aput v2, v0, v1

    .line 19
    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    .line 22
    goto :goto_4

    .line 23
    :cond_16
    return-object v0
.end method

.method private static toInteger(Ljava/lang/String;)I
    .registers 3

    .line 1
    sget-object v0, Lorg/apache/commons/net/util/SubnetUtils;->ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_11

    .line 12
    .line 13
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->matchAddress(Ljava/util/regex/Matcher;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_11
    const-string v0, "Could not parse ["

    .line 19
    .line 20
    const-string v1, "]"

    .line 21
    .line 22
    invoke-static {v0, p0, v1}, Lai/onnxruntime/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return p0
.end method


# virtual methods
.method public final getInfo()Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;-><init>(Lorg/apache/commons/net/util/SubnetUtils;Lorg/apache/commons/net/util/SubnetUtils$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public getNext()Lorg/apache/commons/net/util/SubnetUtils;
    .registers 4

    .line 1
    new-instance v0, Lorg/apache/commons/net/util/SubnetUtils;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils;->getInfo()Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getNextAddress()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils;->getInfo()Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getNetmask()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public getPrevious()Lorg/apache/commons/net/util/SubnetUtils;
    .registers 4

    .line 1
    new-instance v0, Lorg/apache/commons/net/util/SubnetUtils;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils;->getInfo()Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getPreviousAddress()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils;->getInfo()Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getNetmask()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public isInclusiveHostCount()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->inclusiveHostCount:Z

    .line 2
    .line 3
    return v0
.end method

.method public setInclusiveHostCount(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/net/util/SubnetUtils;->inclusiveHostCount:Z

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils;->getInfo()Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
