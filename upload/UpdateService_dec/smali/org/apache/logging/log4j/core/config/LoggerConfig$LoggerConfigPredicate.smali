.class public abstract enum Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;
.super Ljava/lang/Enum;
.source "LoggerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/LoggerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440c
    name = "LoggerConfigPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;

.field public static final enum ALL:Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;

.field public static final enum ASYNCHRONOUS_ONLY:Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;

.field public static final enum SYNCHRONOUS_ONLY:Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 962
    new-instance v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate$1;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;->ALL:Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;

    .line 968
    new-instance v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate$2;

    const-string v1, "ASYNCHRONOUS_ONLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;->ASYNCHRONOUS_ONLY:Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;

    .line 974
    new-instance v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate$3;

    const-string v1, "SYNCHRONOUS_ONLY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;->SYNCHRONOUS_ONLY:Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;

    .line 961
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;

    sget-object v5, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;->ALL:Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;

    aput-object v5, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;->ASYNCHRONOUS_ONLY:Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;->$VALUES:[Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;

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

    .line 961
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/config/LoggerConfig$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/config/LoggerConfig$1;

    .line 961
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;
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

    .line 961
    const-class v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;
    .locals 1

    .line 961
    sget-object v0, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;->$VALUES:[Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;

    return-object v0
.end method


# virtual methods
.method abstract allow(Lorg/apache/logging/log4j/core/config/LoggerConfig;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method
