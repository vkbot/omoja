.class public final synthetic Lorg/apache/logging/log4j/util/-$$Lambda$SortedArrayStringMap$NGEnSz5b0VjyYUPBrr-bEm-mOe4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/apache/logging/log4j/util/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lorg/apache/logging/log4j/util/-$$Lambda$SortedArrayStringMap$NGEnSz5b0VjyYUPBrr-bEm-mOe4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/util/-$$Lambda$SortedArrayStringMap$NGEnSz5b0VjyYUPBrr-bEm-mOe4;

    invoke-direct {v0}, Lorg/apache/logging/log4j/util/-$$Lambda$SortedArrayStringMap$NGEnSz5b0VjyYUPBrr-bEm-mOe4;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/util/-$$Lambda$SortedArrayStringMap$NGEnSz5b0VjyYUPBrr-bEm-mOe4;->INSTANCE:Lorg/apache/logging/log4j/util/-$$Lambda$SortedArrayStringMap$NGEnSz5b0VjyYUPBrr-bEm-mOe4;

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

    check-cast p3, Lorg/apache/logging/log4j/util/StringMap;

    invoke-static {p1, p2, p3}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->lambda$static$0(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/util/StringMap;)V

    return-void
.end method
