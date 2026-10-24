.class Lorg/apache/logging/log4j/util/Timer$1;
.super Ljava/lang/ThreadLocal;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/logging/log4j/util/Timer;


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/util/Timer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/logging/log4j/util/Timer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lorg/apache/logging/log4j/util/Timer$1;->this$0:Lorg/apache/logging/log4j/util/Timer;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Long;
    .locals 2

    .line 43
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/Timer$1;->initialValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
