.class public final synthetic Lorg/apache/logging/log4j/core/script/-$$Lambda$vsK9hglUqFMFzEc5-2NxhYh5BBE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/core/script/-$$Lambda$vsK9hglUqFMFzEc5-2NxhYh5BBE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/core/script/-$$Lambda$vsK9hglUqFMFzEc5-2NxhYh5BBE;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/script/-$$Lambda$vsK9hglUqFMFzEc5-2NxhYh5BBE;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/script/-$$Lambda$vsK9hglUqFMFzEc5-2NxhYh5BBE;->INSTANCE:Lorg/apache/logging/log4j/core/script/-$$Lambda$vsK9hglUqFMFzEc5-2NxhYh5BBE;

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

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
