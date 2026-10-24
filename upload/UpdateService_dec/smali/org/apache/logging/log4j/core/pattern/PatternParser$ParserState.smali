.class final enum Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
.super Ljava/lang/Enum;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/PatternParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ParserState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

.field public static final enum CONVERTER_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

.field public static final enum DOT_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

.field public static final enum LITERAL_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

.field public static final enum MAX_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

.field public static final enum MIN_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 59
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    const-string v1, "LITERAL_STATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->LITERAL_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    .line 64
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    const-string v1, "CONVERTER_STATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->CONVERTER_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    .line 69
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    const-string v1, "DOT_STATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->DOT_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    .line 74
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    const-string v1, "MIN_STATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->MIN_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    .line 79
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    const-string v1, "MAX_STATE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->MAX_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    .line 55
    const/4 v1, 0x5

    new-array v1, v1, [Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    sget-object v7, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->LITERAL_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    aput-object v7, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->CONVERTER_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->DOT_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->MIN_STATE:Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->$VALUES:[Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

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

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
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

    .line 55
    const-class v0, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;
    .locals 1

    .line 55
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->$VALUES:[Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/pattern/PatternParser$ParserState;

    return-object v0
.end method
