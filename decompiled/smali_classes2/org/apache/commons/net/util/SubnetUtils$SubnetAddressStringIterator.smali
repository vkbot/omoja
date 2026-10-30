.class final Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/util/SubnetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubnetAddressStringIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private currentAddress:I

.field private final subnetInfo:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;


# direct methods
.method private constructor <init>(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;->subnetInfo:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    .line 5
    .line 6
    invoke-static {p1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->access$100(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;->currentAddress:I

    .line 11
    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;Lorg/apache/commons/net/util/SubnetUtils$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;-><init>(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;->subnetInfo:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getAddressCountLong()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;->currentAddress:I

    .line 14
    .line 15
    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;->subnetInfo:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    .line 16
    .line 17
    invoke-static {v1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->access$200(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-gt v0, v1, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;->currentAddress:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;->currentAddress:I

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(I)[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400([I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
