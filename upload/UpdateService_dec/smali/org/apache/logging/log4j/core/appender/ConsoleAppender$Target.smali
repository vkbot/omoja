.class public abstract enum Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;
.super Ljava/lang/Enum;
.source "ConsoleAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/ConsoleAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Target"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

.field public static final enum SYSTEM_ERR:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

.field public static final enum SYSTEM_OUT:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 68
    new-instance v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target$1;

    const-string v1, "SYSTEM_OUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;->SYSTEM_OUT:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    .line 77
    new-instance v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target$2;

    const-string v1, "SYSTEM_ERR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;->SYSTEM_ERR:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    .line 65
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    sget-object v4, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;->SYSTEM_OUT:Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;->$VALUES:[Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

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

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/appender/ConsoleAppender$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/appender/ConsoleAppender$1;

    .line 65
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;
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

    .line 65
    const-class v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;
    .locals 1

    .line 65
    sget-object v0, Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;->$VALUES:[Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/appender/ConsoleAppender$Target;

    return-object v0
.end method


# virtual methods
.method protected getCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultCharset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "property",
            "defaultCharset"
        }
    .end annotation

    .line 88
    new-instance v0, Lorg/apache/logging/log4j/util/PropertiesUtil;

    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getSystemProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getCharsetProperty(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDefaultCharset()Ljava/nio/charset/Charset;
.end method
