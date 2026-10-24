.class public final enum Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;
.super Ljava/lang/Enum;
.source "Rfc1349TrafficClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

.field public static final enum IPTOS_LOWCOST:Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

.field public static final enum IPTOS_LOWDELAY:Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

.field public static final enum IPTOS_NORMAL:Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

.field public static final enum IPTOS_RELIABILITY:Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

.field public static final enum IPTOS_THROUGHPUT:Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;


# instance fields
.field private final trafficClass:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 33
    new-instance v0, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    const-string v1, "IPTOS_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;->IPTOS_NORMAL:Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    .line 34
    new-instance v0, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    const-string v1, "IPTOS_LOWCOST"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;->IPTOS_LOWCOST:Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    .line 35
    new-instance v0, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    const-string v1, "IPTOS_LOWDELAY"

    const/16 v5, 0x10

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;->IPTOS_LOWDELAY:Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    .line 36
    new-instance v0, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    const-string v1, "IPTOS_RELIABILITY"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;->IPTOS_RELIABILITY:Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    .line 37
    new-instance v0, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    const-string v1, "IPTOS_THROUGHPUT"

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;->IPTOS_THROUGHPUT:Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    .line 30
    const/4 v1, 0x5

    new-array v1, v1, [Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    sget-object v7, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;->IPTOS_NORMAL:Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    aput-object v7, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;->IPTOS_LOWCOST:Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;->IPTOS_LOWDELAY:Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;->IPTOS_RELIABILITY:Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;->$VALUES:[Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "trafficClass"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "trafficClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;->trafficClass:I

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 30
    const-class v0, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;
    .locals 1

    .line 30
    sget-object v0, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;->$VALUES:[Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 47
    iget v0, p0, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;->trafficClass:I

    return v0
.end method
