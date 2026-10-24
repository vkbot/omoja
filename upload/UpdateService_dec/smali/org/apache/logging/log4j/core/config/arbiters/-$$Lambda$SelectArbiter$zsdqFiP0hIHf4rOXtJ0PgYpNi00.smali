.class public final synthetic Lorg/apache/logging/log4j/core/config/arbiters/-$$Lambda$SelectArbiter$zsdqFiP0hIHf4rOXtJ0PgYpNi00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/core/config/arbiters/-$$Lambda$SelectArbiter$zsdqFiP0hIHf4rOXtJ0PgYpNi00;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/core/config/arbiters/-$$Lambda$SelectArbiter$zsdqFiP0hIHf4rOXtJ0PgYpNi00;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/arbiters/-$$Lambda$SelectArbiter$zsdqFiP0hIHf4rOXtJ0PgYpNi00;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/config/arbiters/-$$Lambda$SelectArbiter$zsdqFiP0hIHf4rOXtJ0PgYpNi00;->INSTANCE:Lorg/apache/logging/log4j/core/config/arbiters/-$$Lambda$SelectArbiter$zsdqFiP0hIHf4rOXtJ0PgYpNi00;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;

    invoke-static {p1}, Lorg/apache/logging/log4j/core/config/arbiters/SelectArbiter;->lambda$evaluateConditions$0(Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;)Z

    move-result p1

    return p1
.end method
