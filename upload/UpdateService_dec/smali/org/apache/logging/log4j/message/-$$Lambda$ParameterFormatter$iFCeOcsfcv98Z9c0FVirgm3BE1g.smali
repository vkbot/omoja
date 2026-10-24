.class public final synthetic Lorg/apache/logging/log4j/message/-$$Lambda$ParameterFormatter$iFCeOcsfcv98Z9c0FVirgm3BE1g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/message/-$$Lambda$ParameterFormatter$iFCeOcsfcv98Z9c0FVirgm3BE1g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/message/-$$Lambda$ParameterFormatter$iFCeOcsfcv98Z9c0FVirgm3BE1g;

    invoke-direct {v0}, Lorg/apache/logging/log4j/message/-$$Lambda$ParameterFormatter$iFCeOcsfcv98Z9c0FVirgm3BE1g;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/message/-$$Lambda$ParameterFormatter$iFCeOcsfcv98Z9c0FVirgm3BE1g;->INSTANCE:Lorg/apache/logging/log4j/message/-$$Lambda$ParameterFormatter$iFCeOcsfcv98Z9c0FVirgm3BE1g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lorg/apache/logging/log4j/message/ParameterFormatter;->lambda$static$0()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method
