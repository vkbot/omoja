.class public final synthetic Lorg/apache/logging/log4j/util/-$$Lambda$cfwqIEDg0Z3A7MGDNrQPTyjrF9M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/util/-$$Lambda$cfwqIEDg0Z3A7MGDNrQPTyjrF9M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/util/-$$Lambda$cfwqIEDg0Z3A7MGDNrQPTyjrF9M;

    invoke-direct {v0}, Lorg/apache/logging/log4j/util/-$$Lambda$cfwqIEDg0Z3A7MGDNrQPTyjrF9M;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/util/-$$Lambda$cfwqIEDg0Z3A7MGDNrQPTyjrF9M;->INSTANCE:Lorg/apache/logging/log4j/util/-$$Lambda$cfwqIEDg0Z3A7MGDNrQPTyjrF9M;

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0
.end method
