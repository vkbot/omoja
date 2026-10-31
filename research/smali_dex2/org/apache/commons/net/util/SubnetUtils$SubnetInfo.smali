.class public final Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/util/SubnetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SubnetInfo"
.end annotation


# static fields
.field private static final UNSIGNED_INT_MASK:J = 0xffffffffL


# instance fields
.field final synthetic this$0:Lorg/apache/commons/net/util/SubnetUtils;


# direct methods
.method private constructor <init>(Lorg/apache/commons/net/util/SubnetUtils;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/net/util/SubnetUtils;Lorg/apache/commons/net/util/SubnetUtils$1;)V
    .registers 3

    .line 7
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;-><init>(Lorg/apache/commons/net/util/SubnetUtils;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$200(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->high()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private broadcastLong()J
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    .line 2
    .line 3
    # getter for: Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-long v0, v0

    .line 8
    const-wide v2, 0xffffffffL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    and-long/2addr v0, v2

    .line 14
    return-wide v0
.end method

.method private high()I
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/net/util/SubnetUtils;->isInclusiveHostCount()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_f

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    .line 10
    .line 11
    # getter for: Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_f
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcastLong()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->networkLong()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    sub-long/2addr v0, v2

    .line 25
    const-wide/16 v2, 0x1

    .line 26
    .line 27
    cmp-long v0, v0, v2

    .line 28
    .line 29
    if-lez v0, :cond_27

    .line 30
    .line 31
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    .line 32
    .line 33
    # getter for: Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    return v0

    .line 40
    :cond_27
    const/4 v0, 0x0

    .line 41
    return v0
.end method

.method private low()I
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/net/util/SubnetUtils;->isInclusiveHostCount()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_f

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    .line 10
    .line 11
    # getter for: Lorg/apache/commons/net/util/SubnetUtils;->network:I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$900(Lorg/apache/commons/net/util/SubnetUtils;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_f
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcastLong()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->networkLong()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    sub-long/2addr v0, v2

    .line 25
    const-wide/16 v2, 0x1

    .line 26
    .line 27
    cmp-long v0, v0, v2

    .line 28
    .line 29
    if-lez v0, :cond_27

    .line 30
    .line 31
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    .line 32
    .line 33
    # getter for: Lorg/apache/commons/net/util/SubnetUtils;->network:I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$900(Lorg/apache/commons/net/util/SubnetUtils;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    return v0

    .line 40
    :cond_27
    const/4 v0, 0x0

    .line 41
    return v0
.end method

.method private networkLong()J
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    .line 2
    .line 3
    # getter for: Lorg/apache/commons/net/util/SubnetUtils;->network:I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$900(Lorg/apache/commons/net/util/SubnetUtils;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-long v0, v0

    .line 8
    const-wide v2, 0xffffffffL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    and-long/2addr v0, v2

    .line 14
    return-wide v0
.end method


# virtual methods
.method public asInteger(Ljava/lang/String;)I
    .registers 2

    .line 1
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toInteger(Ljava/lang/String;)I
    invoke-static {p1}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    .line 2
    .line 3
    # getter for: Lorg/apache/commons/net/util/SubnetUtils;->address:I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$700(Lorg/apache/commons/net/util/SubnetUtils;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toArray4(I)[I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getAddressCount()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getAddressCountLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-gtz v2, :cond_d

    .line 11
    .line 12
    long-to-int v0, v0

    .line 13
    return v0

    .line 14
    :cond_d
    const-string v2, "Count is larger than an integer: "

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lai/onnxruntime/a;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public getAddressCountLong()J
    .registers 6

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcastLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->networkLong()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    sub-long/2addr v0, v2

    .line 10
    iget-object v2, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    .line 11
    .line 12
    invoke-virtual {v2}, Lorg/apache/commons/net/util/SubnetUtils;->isInclusiveHostCount()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_13

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v2, -0x1

    .line 21
    :goto_14
    int-to-long v2, v2

    .line 22
    add-long/2addr v0, v2

    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    cmp-long v4, v0, v2

    .line 26
    .line 27
    if-gez v4, :cond_1d

    .line 28
    .line 29
    return-wide v2

    .line 30
    :cond_1d
    return-wide v0
.end method

.method public getAllAddresses()[Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getAddressCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [Ljava/lang/String;

    .line 6
    .line 7
    if-nez v0, :cond_9

    .line 8
    .line 9
    goto :goto_23

    .line 10
    :cond_9
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->high()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_12
    if-gt v2, v0, :cond_23

    .line 20
    .line 21
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toArray4(I)[I
    invoke-static {v2}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    aput-object v4, v1, v3

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_12

    .line 36
    :cond_23
    :goto_23
    return-object v1
.end method

.method public getBroadcastAddress()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    .line 2
    .line 3
    # getter for: Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toArray4(I)[I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
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
    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    .line 7
    .line 8
    # getter for: Lorg/apache/commons/net/util/SubnetUtils;->address:I
    invoke-static {v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$700(Lorg/apache/commons/net/util/SubnetUtils;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toArray4(I)[I
    invoke-static {v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "/"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    .line 29
    .line 30
    # getter for: Lorg/apache/commons/net/util/SubnetUtils;->netmask:I
    invoke-static {v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$800(Lorg/apache/commons/net/util/SubnetUtils;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public getHighAddress()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->high()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toArray4(I)[I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getLowAddress()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toArray4(I)[I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getNetmask()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    .line 2
    .line 3
    # getter for: Lorg/apache/commons/net/util/SubnetUtils;->netmask:I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$800(Lorg/apache/commons/net/util/SubnetUtils;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toArray4(I)[I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getNetworkAddress()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    .line 2
    .line 3
    # getter for: Lorg/apache/commons/net/util/SubnetUtils;->network:I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$900(Lorg/apache/commons/net/util/SubnetUtils;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toArray4(I)[I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getNextAddress()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    .line 2
    .line 3
    # getter for: Lorg/apache/commons/net/util/SubnetUtils;->address:I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$700(Lorg/apache/commons/net/util/SubnetUtils;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toArray4(I)[I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getPreviousAddress()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    .line 2
    .line 3
    # getter for: Lorg/apache/commons/net/util/SubnetUtils;->address:I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$700(Lorg/apache/commons/net/util/SubnetUtils;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toArray4(I)[I
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public isInRange(I)Z
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    int-to-long v1, p1

    .line 6
    const-wide v3, 0xffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr v1, v3

    .line 12
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    int-to-long v5, p1

    .line 17
    and-long/2addr v5, v3

    .line 18
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->high()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    int-to-long v7, p1

    .line 23
    and-long/2addr v3, v7

    .line 24
    cmp-long p1, v1, v5

    .line 25
    .line 26
    if-ltz p1, :cond_21

    .line 27
    .line 28
    cmp-long p1, v1, v3

    .line 29
    .line 30
    if-gtz p1, :cond_21

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_21
    return v0
.end method

.method public isInRange(Ljava/lang/String;)Z
    .registers 2

    .line 35
    # invokes: Lorg/apache/commons/net/util/SubnetUtils;->toInteger(Ljava/lang/String;)I
    invoke-static {p1}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->isInRange(I)Z

    move-result p1

    return p1
.end method

.method public iterableAddressStrings()Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterable;-><init>(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;Lorg/apache/commons/net/util/SubnetUtils$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public streamAddressStrings()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->iterableAddressStrings()Ljava/lang/Iterable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

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
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getCidrSignature()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "]\n  Netmask: ["

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getNetmask()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "]\n  Network: ["

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getNetworkAddress()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "]\n  Broadcast: ["

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getBroadcastAddress()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, "]\n  First address: ["

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getLowAddress()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "]\n  Last address: ["

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getHighAddress()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, "]\n  Address Count: ["

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getAddressCountLong()J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, "]\n"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0
.end method
