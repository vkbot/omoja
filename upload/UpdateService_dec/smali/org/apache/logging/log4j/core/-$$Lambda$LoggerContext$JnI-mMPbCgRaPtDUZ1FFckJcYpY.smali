.class public final synthetic Lorg/apache/logging/log4j/core/-$$Lambda$LoggerContext$JnI-mMPbCgRaPtDUZ1FFckJcYpY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/core/-$$Lambda$LoggerContext$JnI-mMPbCgRaPtDUZ1FFckJcYpY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/core/-$$Lambda$LoggerContext$JnI-mMPbCgRaPtDUZ1FFckJcYpY;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/-$$Lambda$LoggerContext$JnI-mMPbCgRaPtDUZ1FFckJcYpY;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/-$$Lambda$LoggerContext$JnI-mMPbCgRaPtDUZ1FFckJcYpY;->INSTANCE:Lorg/apache/logging/log4j/core/-$$Lambda$LoggerContext$JnI-mMPbCgRaPtDUZ1FFckJcYpY;

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

    invoke-static {p1}, Lorg/apache/logging/log4j/core/LoggerContext;->lambda$setConfiguration$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
