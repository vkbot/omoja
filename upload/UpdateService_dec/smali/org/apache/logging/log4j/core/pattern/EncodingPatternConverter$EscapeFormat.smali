.class abstract enum Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;
.super Ljava/lang/Enum;
.source "EncodingPatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "EscapeFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

.field public static final enum CRLF:Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

.field public static final enum HTML:Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

.field public static final enum JSON:Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

.field public static final enum XML:Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 101
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat$1;

    const-string v1, "HTML"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;->HTML:Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

    .line 162
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat$2;

    const-string v1, "JSON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;->JSON:Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

    .line 169
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat$3;

    const-string v1, "CRLF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;->CRLF:Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

    .line 209
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat$4;

    const-string v1, "XML"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;->XML:Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

    .line 100
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

    sget-object v6, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;->HTML:Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

    aput-object v6, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;->JSON:Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;->CRLF:Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;->$VALUES:[Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

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

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$1;

    .line 100
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;
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

    .line 100
    const-class v0, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;
    .locals 1

    .line 100
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;->$VALUES:[Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

    return-object v0
.end method


# virtual methods
.method abstract escape(Ljava/lang/StringBuilder;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "toAppendTo",
            "start"
        }
    .end annotation
.end method
