.class public Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;
.super Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;
.source "JsonLayout.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/JsonLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/layout/JsonLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "AdditionalField"
    .end annotation
.end field

.field private objectMessageAsJsonObject:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private propertiesAsList:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 91
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;-><init>()V

    .line 92
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;

    .line 93
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 79
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->build()Lorg/apache/logging/log4j/core/layout/JsonLayout;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/layout/JsonLayout;
    .locals 23

    .line 97
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder<TB;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->isProperties()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->propertiesAsList:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    .line 98
    .local v6, "encodeThreadContextAsList":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->getHeader()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->toStringOrNull([B)Ljava/lang/String;

    move-result-object v1

    .local v1, "headerPattern":Ljava/lang/String;
    move-object v11, v1

    .line 99
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->getFooter()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->toStringOrNull([B)Ljava/lang/String;

    move-result-object v21

    .local v21, "footerPattern":Ljava/lang/String;
    move-object/from16 v12, v21

    .line 100
    new-instance v22, Lorg/apache/logging/log4j/core/layout/JsonLayout;

    move-object/from16 v2, v22

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->isLocationInfo()Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->isProperties()Z

    move-result v5

    .line 101
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->isComplete()Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->isCompact()Z

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->getEventEol()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->getEndOfLine()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    .line 102
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->isIncludeStacktrace()Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->isStacktraceAsString()Z

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->isIncludeNullDelimiter()Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->isIncludeTimeMillis()Z

    move-result v17

    .line 103
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->getAdditionalFields()[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->getObjectMessageAsJsonObject()Z

    move-result v19

    const/16 v20, 0x0

    invoke-direct/range {v2 .. v20}, Lorg/apache/logging/log4j/core/layout/JsonLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZZ[Lorg/apache/logging/log4j/core/util/KeyValuePair;ZLorg/apache/logging/log4j/core/layout/JsonLayout$1;)V

    .line 100
    return-object v22
.end method

.method public getAdditionalFields()[Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .locals 1

    .line 126
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    return-object v0
.end method

.method public getObjectMessageAsJsonObject()Z
    .locals 1

    .line 116
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->objectMessageAsJsonObject:Z

    return v0
.end method

.method public isPropertiesAsList()Z
    .locals 1

    .line 107
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->propertiesAsList:Z

    return v0
.end method

.method public bridge synthetic setAdditionalFields([Lorg/apache/logging/log4j/core/util/KeyValuePair;)Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "additionalFields"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder<TB;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->setAdditionalFields([Lorg/apache/logging/log4j/core/util/KeyValuePair;)Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAdditionalFields([Lorg/apache/logging/log4j/core/util/KeyValuePair;)Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;
    .locals 1
    .param p1, "additionalFields"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "additionalFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/core/util/KeyValuePair;",
            ")TB;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    .line 132
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;

    return-object v0
.end method

.method public setObjectMessageAsJsonObject(Z)Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;
    .locals 1
    .param p1, "objectMessageAsJsonObject"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "objectMessageAsJsonObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 120
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->objectMessageAsJsonObject:Z

    .line 121
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;

    return-object v0
.end method

.method public setPropertiesAsList(Z)Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;
    .locals 1
    .param p1, "propertiesAsList"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "propertiesAsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->propertiesAsList:Z

    .line 112
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;

    return-object v0
.end method
