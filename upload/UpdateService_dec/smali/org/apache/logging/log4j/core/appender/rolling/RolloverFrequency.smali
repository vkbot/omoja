.class public final enum Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;
.super Ljava/lang/Enum;
.source "RolloverFrequency.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

.field public static final enum ANNUALLY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

.field public static final enum DAILY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

.field public static final enum EVERY_MILLISECOND:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

.field public static final enum EVERY_MINUTE:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

.field public static final enum EVERY_SECOND:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

.field public static final enum HOURLY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

.field public static final enum MONTHLY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

.field public static final enum WEEKLY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 24
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    const-string v1, "ANNUALLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->ANNUALLY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    .line 26
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    const-string v1, "MONTHLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->MONTHLY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    .line 28
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    const-string v1, "WEEKLY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->WEEKLY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    .line 30
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    const-string v1, "DAILY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->DAILY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    .line 32
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    const-string v1, "HOURLY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->HOURLY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    .line 34
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    const-string v1, "EVERY_MINUTE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->EVERY_MINUTE:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    .line 36
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    const-string v1, "EVERY_SECOND"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->EVERY_SECOND:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    .line 38
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    const-string v1, "EVERY_MILLISECOND"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->EVERY_MILLISECOND:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    .line 22
    const/16 v1, 0x8

    new-array v1, v1, [Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    sget-object v10, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->ANNUALLY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    aput-object v10, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->MONTHLY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->WEEKLY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->DAILY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->HOURLY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->EVERY_MINUTE:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->EVERY_SECOND:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->$VALUES:[Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;
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

    .line 22
    const-class v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;
    .locals 1

    .line 22
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->$VALUES:[Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    return-object v0
.end method
