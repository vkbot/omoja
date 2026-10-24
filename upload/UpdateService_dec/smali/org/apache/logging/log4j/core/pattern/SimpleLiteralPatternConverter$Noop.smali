.class final Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Noop;
.super Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter;
.source "SimpleLiteralPatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Noop"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Noop;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Noop;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Noop;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Noop;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Noop;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter;-><init>(Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$1;)V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Noop;
    .locals 1

    .line 87
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Noop;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$Noop;

    return-object v0
.end method


# virtual methods
.method format(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "output"
        }
    .end annotation

    .line 93
    return-void
.end method
