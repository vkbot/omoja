.class public final synthetic Lorg/apache/logging/log4j/core/impl/-$$Lambda$JdkMapAdapterStringMap$sBb5VhlMwjs5wvQeUnR996JR1v4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/logging/log4j/util/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/core/impl/-$$Lambda$JdkMapAdapterStringMap$sBb5VhlMwjs5wvQeUnR996JR1v4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/core/impl/-$$Lambda$JdkMapAdapterStringMap$sBb5VhlMwjs5wvQeUnR996JR1v4;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/impl/-$$Lambda$JdkMapAdapterStringMap$sBb5VhlMwjs5wvQeUnR996JR1v4;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/impl/-$$Lambda$JdkMapAdapterStringMap$sBb5VhlMwjs5wvQeUnR996JR1v4;->INSTANCE:Lorg/apache/logging/log4j/core/impl/-$$Lambda$JdkMapAdapterStringMap$sBb5VhlMwjs5wvQeUnR996JR1v4;

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

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/util/Map;

    invoke-static {p1, p2, p3}, Lorg/apache/logging/log4j/core/impl/JdkMapAdapterStringMap;->lambda$static$1(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
