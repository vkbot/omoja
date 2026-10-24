.class abstract enum Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;
.super Ljava/lang/Enum;
.source "NameAbbreviator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Strategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;

.field public static final enum DROP:Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;

.field public static final enum RETAIN:Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;


# instance fields
.field final minCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 180
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy$1;

    const-string v1, "DROP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;->DROP:Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;

    .line 197
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy$2;

    const-string v1, "RETAIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;->RETAIN:Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;

    .line 179
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;

    sget-object v4, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;->DROP:Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;->$VALUES:[Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "minCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "minCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 219
    iput p3, p0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;->minCount:I

    .line 220
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILorg/apache/logging/log4j/core/pattern/NameAbbreviator$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$1;

    .line 179
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;
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

    .line 179
    const-class v0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;
    .locals 1

    .line 179
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;->$VALUES:[Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/pattern/NameAbbreviator$MaxElementAbbreviator$Strategy;

    return-object v0
.end method


# virtual methods
.method abstract abbreviate(ILjava/lang/String;Ljava/lang/StringBuilder;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "count",
            "original",
            "destination"
        }
    .end annotation
.end method
