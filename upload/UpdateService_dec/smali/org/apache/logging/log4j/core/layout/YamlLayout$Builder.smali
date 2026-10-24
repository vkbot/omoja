.class public Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;
.super Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;
.source "YamlLayout.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/YamlLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/layout/YamlLayout;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;-><init>()V

    .line 61
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;

    .line 62
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 57
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;->build()Lorg/apache/logging/log4j/core/layout/YamlLayout;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/layout/YamlLayout;
    .locals 21

    .line 66
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder<TB;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;->getHeader()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;->toStringOrNull([B)Ljava/lang/String;

    move-result-object v1

    .local v1, "headerPattern":Ljava/lang/String;
    move-object v10, v1

    .line 67
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;->getFooter()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;->toStringOrNull([B)Ljava/lang/String;

    move-result-object v19

    .local v19, "footerPattern":Ljava/lang/String;
    move-object/from16 v11, v19

    .line 68
    new-instance v20, Lorg/apache/logging/log4j/core/layout/YamlLayout;

    move-object/from16 v2, v20

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;->isLocationInfo()Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;->isProperties()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;->isComplete()Z

    move-result v6

    .line 69
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;->isCompact()Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;->getEventEol()Z

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;->getEndOfLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v12

    .line 70
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;->isIncludeStacktrace()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;->isStacktraceAsString()Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;->isIncludeNullDelimiter()Z

    move-result v15

    .line 71
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;->isIncludeTimeMillis()Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;->getAdditionalFields()[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    move-result-object v17

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Lorg/apache/logging/log4j/core/layout/YamlLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZZ[Lorg/apache/logging/log4j/core/util/KeyValuePair;Lorg/apache/logging/log4j/core/layout/YamlLayout$1;)V

    .line 68
    return-object v20
.end method
