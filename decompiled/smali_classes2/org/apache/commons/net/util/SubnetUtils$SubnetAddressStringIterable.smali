.class final Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterable;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/util/SubnetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubnetAddressStringIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final subnetInfo:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;


# direct methods
.method private constructor <init>(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterable;->subnetInfo:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;Lorg/apache/commons/net/util/SubnetUtils$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterable;-><init>(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterable;->subnetInfo:Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/util/SubnetUtils$SubnetAddressStringIterator;-><init>(Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;Lorg/apache/commons/net/util/SubnetUtils$1;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
