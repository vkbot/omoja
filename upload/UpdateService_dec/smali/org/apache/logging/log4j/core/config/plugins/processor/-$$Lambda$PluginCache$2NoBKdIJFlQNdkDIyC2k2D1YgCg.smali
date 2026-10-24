.class public final synthetic Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$2NoBKdIJFlQNdkDIyC2k2D1YgCg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$2NoBKdIJFlQNdkDIyC2k2D1YgCg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$2NoBKdIJFlQNdkDIyC2k2D1YgCg;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$2NoBKdIJFlQNdkDIyC2k2D1YgCg;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$2NoBKdIJFlQNdkDIyC2k2D1YgCg;->INSTANCE:Lorg/apache/logging/log4j/core/config/plugins/processor/-$$Lambda$PluginCache$2NoBKdIJFlQNdkDIyC2k2D1YgCg;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/logging/log4j/core/config/plugins/processor/PluginCache;->lambda$getCategory$0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
