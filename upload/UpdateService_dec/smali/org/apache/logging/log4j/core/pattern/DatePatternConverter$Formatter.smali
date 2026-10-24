.class abstract Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;
.super Ljava/lang/Object;
.source "DatePatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Formatter"
.end annotation


# instance fields
.field nanos:I

.field previousTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$1;

    .line 43
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;-><init>()V

    return-void
.end method


# virtual methods
.method abstract format(Lorg/apache/logging/log4j/core/time/Instant;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "instant"
        }
    .end annotation
.end method

.method abstract formatToBuffer(Lorg/apache/logging/log4j/core/time/Instant;Ljava/lang/StringBuilder;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "instant",
            "destination"
        }
    .end annotation
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method
