.class public final enum Lorg/apache/logging/log4j/message/MapMessage$MapFormat;
.super Ljava/lang/Enum;
.source "MapMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/message/MapMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/message/MapMessage$MapFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

.field public static final enum JAVA:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

.field public static final enum JAVA_UNQUOTED:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

.field public static final enum JSON:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

.field public static final enum XML:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 63
    new-instance v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    const-string v1, "XML"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->XML:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    .line 66
    new-instance v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    const-string v1, "JSON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JSON:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    .line 69
    new-instance v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    const-string v1, "JAVA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JAVA:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    .line 76
    new-instance v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    const-string v1, "JAVA_UNQUOTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JAVA_UNQUOTED:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    .line 60
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    sget-object v6, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->XML:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    aput-object v6, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JSON:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JAVA:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->$VALUES:[Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

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

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static lookupIgnoreCase(Ljava/lang/String;)Lorg/apache/logging/log4j/message/MapMessage$MapFormat;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "format"
        }
    .end annotation

    .line 85
    sget-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->XML:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->XML:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JSON:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    .line 86
    invoke-virtual {v0}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JSON:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JAVA:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    .line 87
    invoke-virtual {v0}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JAVA:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JAVA_UNQUOTED:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    .line 88
    invoke-virtual {v0}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JAVA_UNQUOTED:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0
.end method

.method public static names()[Ljava/lang/String;
    .locals 3

    .line 98
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->XML:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JSON:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JAVA:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->JAVA_UNQUOTED:Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/message/MapMessage$MapFormat;
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

    .line 60
    const-class v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/message/MapMessage$MapFormat;
    .locals 1

    .line 60
    sget-object v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->$VALUES:[Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    return-object v0
.end method
