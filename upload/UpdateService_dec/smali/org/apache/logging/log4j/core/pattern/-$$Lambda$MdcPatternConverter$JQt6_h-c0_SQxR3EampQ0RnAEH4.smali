.class public final synthetic Lorg/apache/logging/log4j/core/pattern/-$$Lambda$MdcPatternConverter$JQt6_h-c0_SQxR3EampQ0RnAEH4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/logging/log4j/util/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/core/pattern/-$$Lambda$MdcPatternConverter$JQt6_h-c0_SQxR3EampQ0RnAEH4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/core/pattern/-$$Lambda$MdcPatternConverter$JQt6_h-c0_SQxR3EampQ0RnAEH4;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/pattern/-$$Lambda$MdcPatternConverter$JQt6_h-c0_SQxR3EampQ0RnAEH4;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/-$$Lambda$MdcPatternConverter$JQt6_h-c0_SQxR3EampQ0RnAEH4;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/-$$Lambda$MdcPatternConverter$JQt6_h-c0_SQxR3EampQ0RnAEH4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p3, Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lorg/apache/logging/log4j/core/pattern/MdcPatternConverter;->lambda$static$0(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void
.end method
