.class public Lorg/apache/logging/log4j/core/DefaultLoggerContextAccessor;
.super Ljava/lang/Object;
.source "DefaultLoggerContextAccessor.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/LoggerContextAccessor;


# static fields
.field public static INSTANCE:Lorg/apache/logging/log4j/core/DefaultLoggerContextAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lorg/apache/logging/log4j/core/DefaultLoggerContextAccessor;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/DefaultLoggerContextAccessor;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/DefaultLoggerContextAccessor;->INSTANCE:Lorg/apache/logging/log4j/core/DefaultLoggerContextAccessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoggerContext()Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 1

    .line 37
    invoke-static {}, Lorg/apache/logging/log4j/core/LoggerContext;->getContext()Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    return-object v0
.end method
