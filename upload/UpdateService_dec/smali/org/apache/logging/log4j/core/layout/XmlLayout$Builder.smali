.class public Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;
.super Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;
.source "XmlLayout.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/XmlLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/layout/XmlLayout;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;-><init>()V

    .line 71
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;

    .line 72
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 67
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;->build()Lorg/apache/logging/log4j/core/layout/XmlLayout;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/layout/XmlLayout;
    .locals 15

    .line 76
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder<TB;>;"
    new-instance v14, Lorg/apache/logging/log4j/core/layout/XmlLayout;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;->isLocationInfo()Z

    move-result v2

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;->isProperties()Z

    move-result v3

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;->isComplete()Z

    move-result v4

    .line 77
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;->isCompact()Z

    move-result v5

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;->getEndOfLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;->isIncludeStacktrace()Z

    move-result v8

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;->isStacktraceAsString()Z

    move-result v9

    .line 78
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;->isIncludeNullDelimiter()Z

    move-result v10

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;->isIncludeTimeMillis()Z

    move-result v11

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;->getAdditionalFields()[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    move-result-object v12

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lorg/apache/logging/log4j/core/layout/XmlLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZLjava/lang/String;Ljava/nio/charset/Charset;ZZZZ[Lorg/apache/logging/log4j/core/util/KeyValuePair;Lorg/apache/logging/log4j/core/layout/XmlLayout$1;)V

    .line 76
    return-object v14
.end method
