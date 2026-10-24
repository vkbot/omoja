.class public final synthetic Lorg/apache/logging/log4j/core/appender/-$$Lambda$3FIKALDHkjS0iQUF6DSmEXsf_VA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/core/appender/-$$Lambda$3FIKALDHkjS0iQUF6DSmEXsf_VA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/core/appender/-$$Lambda$3FIKALDHkjS0iQUF6DSmEXsf_VA;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/-$$Lambda$3FIKALDHkjS0iQUF6DSmEXsf_VA;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/-$$Lambda$3FIKALDHkjS0iQUF6DSmEXsf_VA;->INSTANCE:Lorg/apache/logging/log4j/core/appender/-$$Lambda$3FIKALDHkjS0iQUF6DSmEXsf_VA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/logging/log4j/core/config/AppenderControl;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/config/AppenderControl;->getAppender()Lorg/apache/logging/log4j/core/Appender;

    move-result-object p1

    return-object p1
.end method
