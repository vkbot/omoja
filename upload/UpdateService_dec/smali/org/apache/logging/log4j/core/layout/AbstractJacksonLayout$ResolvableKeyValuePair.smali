.class public Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;
.super Ljava/lang/Object;
.source "AbstractJacksonLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ResolvableKeyValuePair"
.end annotation


# static fields
.field static final EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;


# instance fields
.field final key:Ljava/lang/String;

.field final value:Ljava/lang/String;

.field final valueNeedsLookup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 381
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;

    sput-object v0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;

    return-void
.end method

.method constructor <init>(Lorg/apache/logging/log4j/core/util/KeyValuePair;)V
    .locals 1
    .param p1, "pair"    # Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pair"
        }
    .end annotation

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;->key:Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;->value:Ljava/lang/String;

    .line 390
    invoke-static {v0}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->valueNeedsLookup(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;->valueNeedsLookup:Z

    .line 391
    return-void
.end method
