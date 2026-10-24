.class public final synthetic Lorg/apache/logging/log4j/util/-$$Lambda$PropertiesUtil$Environment$e-bsM1znsIz85eHYX79QxUKDcJA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/logging/log4j/util/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/util/-$$Lambda$PropertiesUtil$Environment$e-bsM1znsIz85eHYX79QxUKDcJA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/util/-$$Lambda$PropertiesUtil$Environment$e-bsM1znsIz85eHYX79QxUKDcJA;

    invoke-direct {v0}, Lorg/apache/logging/log4j/util/-$$Lambda$PropertiesUtil$Environment$e-bsM1znsIz85eHYX79QxUKDcJA;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/util/-$$Lambda$PropertiesUtil$Environment$e-bsM1znsIz85eHYX79QxUKDcJA;->INSTANCE:Lorg/apache/logging/log4j/util/-$$Lambda$PropertiesUtil$Environment$e-bsM1znsIz85eHYX79QxUKDcJA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/apache/logging/log4j/util/PropertiesUtil$Environment;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
