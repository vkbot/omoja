.class public final enum Lorg/apache/logging/log4j/core/Filter$Result;
.super Ljava/lang/Enum;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/Filter$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/Filter$Result;

.field public static final enum ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

.field public static final enum DENY:Lorg/apache/logging/log4j/core/Filter$Result;

.field public static final enum NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 55
    new-instance v0, Lorg/apache/logging/log4j/core/Filter$Result;

    const-string v1, "ACCEPT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/Filter$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    .line 59
    new-instance v0, Lorg/apache/logging/log4j/core/Filter$Result;

    const-string v1, "NEUTRAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/logging/log4j/core/Filter$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    .line 63
    new-instance v0, Lorg/apache/logging/log4j/core/Filter$Result;

    const-string v1, "DENY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/logging/log4j/core/Filter$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->DENY:Lorg/apache/logging/log4j/core/Filter$Result;

    .line 51
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/logging/log4j/core/Filter$Result;

    sget-object v5, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    aput-object v5, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/apache/logging/log4j/core/Filter$Result;->$VALUES:[Lorg/apache/logging/log4j/core/Filter$Result;

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

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static toResult(Ljava/lang/String;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/core/Filter$Result;->toResult(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter$Result;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public static toResult(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter$Result;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultResult"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "defaultResult"
        }
    .end annotation

    .line 83
    const-class v0, Lorg/apache/logging/log4j/core/Filter$Result;

    invoke-static {v0, p0, p1}, Lorg/apache/logging/log4j/util/EnglishEnums;->valueOf(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/Filter$Result;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/Filter$Result;
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

    .line 51
    const-class v0, Lorg/apache/logging/log4j/core/Filter$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/Filter$Result;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1

    .line 51
    sget-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->$VALUES:[Lorg/apache/logging/log4j/core/Filter$Result;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/Filter$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/Filter$Result;

    return-object v0
.end method
