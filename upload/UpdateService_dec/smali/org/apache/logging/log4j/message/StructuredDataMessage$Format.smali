.class public final enum Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;
.super Ljava/lang/Enum;
.source "StructuredDataMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/message/StructuredDataMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

.field public static final enum FULL:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

.field public static final enum XML:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 56
    new-instance v0, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    const-string v1, "XML"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->XML:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    .line 58
    new-instance v0, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    const-string v1, "FULL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->FULL:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    .line 54
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    sget-object v4, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->XML:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->$VALUES:[Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

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

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;
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

    .line 54
    const-class v0, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;
    .locals 1

    .line 54
    sget-object v0, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->$VALUES:[Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    return-object v0
.end method
