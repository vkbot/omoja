.class Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;
.super Ljava/lang/Object;
.source "CronExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/CronExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueSet"
.end annotation


# instance fields
.field public pos:I

.field final synthetic this$0:Lorg/apache/logging/log4j/core/util/CronExpression;

.field public value:I


# direct methods
.method private constructor <init>(Lorg/apache/logging/log4j/core/util/CronExpression;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1704
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;->this$0:Lorg/apache/logging/log4j/core/util/CronExpression;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/util/CronExpression;Lorg/apache/logging/log4j/core/util/CronExpression$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/util/CronExpression;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/util/CronExpression$1;

    .line 1704
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;-><init>(Lorg/apache/logging/log4j/core/util/CronExpression;)V

    return-void
.end method
