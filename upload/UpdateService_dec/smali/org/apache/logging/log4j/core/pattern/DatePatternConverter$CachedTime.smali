.class final Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;
.super Ljava/lang/Object;
.source "DatePatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CachedTime"
.end annotation


# instance fields
.field public epochSecond:J

.field public formatted:Ljava/lang/String;

.field public nanoOfSecond:I

.field final synthetic this$0:Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;Lorg/apache/logging/log4j/core/time/Instant;)V
    .locals 2
    .param p2, "instant"    # Lorg/apache/logging/log4j/core/time/Instant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            "this$0",
            "instant"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;->this$0:Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/time/Instant;->getEpochSecond()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;->epochSecond:J

    .line 154
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/time/Instant;->getNanoOfSecond()I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;->nanoOfSecond:I

    .line 155
    invoke-static {p1}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->access$100(Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;)Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;->format(Lorg/apache/logging/log4j/core/time/Instant;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;->formatted:Ljava/lang/String;

    .line 156
    return-void
.end method
