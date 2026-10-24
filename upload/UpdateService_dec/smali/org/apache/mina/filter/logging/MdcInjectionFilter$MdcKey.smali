.class public final enum Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;
.super Ljava/lang/Enum;
.source "MdcInjectionFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/logging/MdcInjectionFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MdcKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

.field public static final enum handlerClass:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

.field public static final enum localAddress:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

.field public static final enum localIp:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

.field public static final enum localPort:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

.field public static final enum remoteAddress:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

.field public static final enum remoteIp:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

.field public static final enum remotePort:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 79
    new-instance v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    const-string v1, "handlerClass"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->handlerClass:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    .line 82
    new-instance v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    const-string v1, "remoteAddress"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remoteAddress:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    .line 85
    new-instance v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    const-string v1, "localAddress"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localAddress:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    .line 88
    new-instance v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    const-string v1, "remoteIp"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remoteIp:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    .line 91
    new-instance v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    const-string v1, "remotePort"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remotePort:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    .line 94
    new-instance v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    const-string v1, "localIp"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localIp:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    .line 97
    new-instance v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    const-string v1, "localPort"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localPort:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    .line 77
    const/4 v1, 0x7

    new-array v1, v1, [Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    sget-object v9, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->handlerClass:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    aput-object v9, v1, v2

    sget-object v2, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remoteAddress:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localAddress:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remoteIp:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remotePort:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localIp:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->$VALUES:[Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 77
    const-class v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    return-object v0
.end method

.method public static values()[Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;
    .locals 1

    .line 77
    sget-object v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->$VALUES:[Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v0}, [Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    return-object v0
.end method
