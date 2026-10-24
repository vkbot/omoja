.class public final enum Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;
.super Ljava/lang/Enum;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Overflow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

.field public static final enum SPAN:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

.field public static final enum TRUNCATE:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

.field public static final enum WRAP:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4131
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    const-string v1, "TRUNCATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;->TRUNCATE:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    const-string v1, "SPAN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;->SPAN:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    const-string v1, "WRAP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;->WRAP:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    sget-object v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;->TRUNCATE:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    aput-object v5, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;->SPAN:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;->$VALUES:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

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

    .line 4131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;
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

    .line 4131
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;
    .locals 1

    .line 4131
    sget-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;->$VALUES:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    return-object v0
.end method
