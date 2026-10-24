.class final Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Space;
.super Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter;
.source "SimpleLiteralPatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Space"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Space;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Space;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Space;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Space;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Space;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter;-><init>(Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$1;)V

    return-void
.end method

.method static synthetic access$100()Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Space;
    .locals 1

    .line 96
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Space;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Space;

    return-object v0
.end method


# virtual methods
.method format(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "output"
        }
    .end annotation

    .line 101
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    return-void
.end method
