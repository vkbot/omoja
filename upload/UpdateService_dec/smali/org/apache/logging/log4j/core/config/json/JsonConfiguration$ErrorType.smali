.class final enum Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;
.super Ljava/lang/Enum;
.source "JsonConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/json/JsonConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;

.field public static final enum CLASS_NOT_FOUND:Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 251
    new-instance v0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;

    const-string v1, "CLASS_NOT_FOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;->CLASS_NOT_FOUND:Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;

    .line 250
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;->$VALUES:[Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;

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

    .line 250
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;
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

    .line 250
    const-class v0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;
    .locals 1

    .line 250
    sget-object v0, Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;->$VALUES:[Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/config/json/JsonConfiguration$ErrorType;

    return-object v0
.end method
