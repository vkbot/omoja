.class public Lorg/apache/mina/filter/firewall/Subnet;
.super Ljava/lang/Object;
.source "Subnet.java"


# static fields
.field private static final BYTE_MASK:I = 0xff

.field private static final IP_MASK_V4:I = -0x80000000

.field private static final IP_MASK_V6:J = -0x8000000000000000L


# instance fields
.field private subnet:Ljava/net/InetAddress;

.field private subnetInt:I

.field private subnetLong:J

.field private subnetMask:J

.field private suffix:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "subnet"    # Ljava/net/InetAddress;
    .param p2, "mask"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-eqz p1, :cond_5

    .line 65
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only IPv4 and IPV6 supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    :goto_0
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_3

    .line 71
    if-ltz p2, :cond_2

    const/16 v0, 0x20

    if-gt p2, v0, :cond_2

    .line 74
    iput-object p1, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnet:Ljava/net/InetAddress;

    .line 75
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/firewall/Subnet;->toInt(Ljava/net/InetAddress;)I

    move-result v0

    iput v0, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnetInt:I

    .line 76
    iput p2, p0, Lorg/apache/mina/filter/firewall/Subnet;->suffix:I

    .line 79
    const/high16 v0, -0x80000000

    add-int/lit8 v1, p2, -0x1

    shr-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnetMask:J

    goto :goto_1

    .line 72
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mask has to be an integer between 0 and 32 for an IPV4 address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_3
    if-ltz p2, :cond_4

    const/16 v0, 0x80

    if-gt p2, v0, :cond_4

    .line 86
    iput-object p1, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnet:Ljava/net/InetAddress;

    .line 87
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/firewall/Subnet;->toLong(Ljava/net/InetAddress;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnetLong:J

    .line 88
    iput p2, p0, Lorg/apache/mina/filter/firewall/Subnet;->suffix:I

    .line 91
    const-wide/high16 v0, -0x8000000000000000L

    add-int/lit8 v2, p2, -0x1

    shr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnetMask:J

    .line 94
    :goto_1
    return-void

    .line 84
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mask has to be an integer between 0 and 128 for an IPV6 address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subnet address can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toInt(Ljava/net/InetAddress;)I
    .locals 4
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .line 100
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 101
    .local v0, "address":[B
    const/4 v1, 0x0

    .line 103
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 104
    shl-int/lit8 v1, v1, 0x8

    .line 105
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method private toLong(Ljava/net/InetAddress;)J
    .locals 6
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .line 115
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 116
    .local v0, "address":[B
    const-wide/16 v1, 0x0

    .line 118
    .local v1, "result":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 119
    const/16 v4, 0x8

    shl-long/2addr v1, v4

    .line 120
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v1, v4

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    .end local v3    # "i":I
    :cond_0
    return-wide v1
.end method

.method private toSubnet(Ljava/net/InetAddress;)J
    .locals 4
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 134
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/firewall/Subnet;->toInt(Ljava/net/InetAddress;)I

    move-result v0

    iget-wide v1, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnetMask:J

    long-to-int v1, v1

    and-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    .line 137
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/firewall/Subnet;->toLong(Ljava/net/InetAddress;)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnetMask:J

    and-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 168
    instance-of v0, p1, Lorg/apache/mina/filter/firewall/Subnet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 169
    return v1

    .line 172
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/filter/firewall/Subnet;

    .line 174
    .local v0, "other":Lorg/apache/mina/filter/firewall/Subnet;
    iget v2, v0, Lorg/apache/mina/filter/firewall/Subnet;->subnetInt:I

    iget v3, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnetInt:I

    if-ne v2, v3, :cond_1

    iget v2, v0, Lorg/apache/mina/filter/firewall/Subnet;->suffix:I

    iget v3, p0, Lorg/apache/mina/filter/firewall/Subnet;->suffix:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public inSubnet(Ljava/net/InetAddress;)Z
    .locals 7
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 147
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 148
    return v1

    .line 151
    :cond_0
    instance-of v0, p1, Ljava/net/Inet4Address;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 152
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/firewall/Subnet;->toSubnet(Ljava/net/InetAddress;)J

    move-result-wide v3

    long-to-int v0, v3

    iget v3, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnetInt:I

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 154
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/firewall/Subnet;->toSubnet(Ljava/net/InetAddress;)J

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnetLong:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/mina/filter/firewall/Subnet;->subnet:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/mina/filter/firewall/Subnet;->suffix:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
