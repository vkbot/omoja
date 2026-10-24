.class Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;
.super Ljava/lang/Object;
.source "ThrowableProxyRenderer.java"


# static fields
.field private static final CAUSED_BY_LABEL:Ljava/lang/String; = "Caused by: "

.field private static final SUPPRESSED_LABEL:Ljava/lang/String; = "Suppressed: "

.field private static final TAB:Ljava/lang/String; = "\t"

.field private static final WRAPPED_BY_LABEL:Ljava/lang/String; = "Wrapped by: "


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static appendSuppressedCount(Ljava/lang/StringBuilder;Ljava/lang/String;ILorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .param p4, "suffix"    # Ljava/lang/String;
    .param p5, "lineSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "prefix",
            "count",
            "textRenderer",
            "suffix",
            "lineSeparator"
        }
    .end annotation

    .line 130
    const-string v0, "Prefix"

    invoke-interface {p3, p1, p0, v0}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 131
    const-string v0, "Suppressed"

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 132
    const-string v1, "\t... "

    invoke-interface {p3, v1, p0, v0}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_0
    const-string v1, "\t... suppressed "

    invoke-interface {p3, v1, p0, v0}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 135
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, p0, v0}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 136
    const-string v1, " lines"

    invoke-interface {p3, v1, p0, v0}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 138
    :goto_0
    invoke-static {p4, p0, p3}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->renderSuffix(Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V

    .line 139
    const-string v0, "Text"

    invoke-interface {p3, p5, p0, v0}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method private static formatCause(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "cause"    # Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .param p4, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .param p5, "suffix"    # Ljava/lang/String;
    .param p6, "lineSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "prefix",
            "cause",
            "ignorePackages",
            "textRenderer",
            "suffix",
            "lineSeparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/impl/ThrowableProxy;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/logging/log4j/core/pattern/TextRenderer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 57
    .local p3, "ignorePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "Caused by: "

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->formatThrowableProxy(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method static formatCauseStackTrace(Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/lang/StringBuilder;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p0, "src"    # Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .param p4, "suffix"    # Ljava/lang/String;
    .param p5, "lineSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "src",
            "sb",
            "ignorePackages",
            "textRenderer",
            "suffix",
            "lineSeparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/impl/ThrowableProxy;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/logging/log4j/core/pattern/TextRenderer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 196
    .local p2, "ignorePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getCauseProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v12

    .line 197
    .local v12, "causeProxy":Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    if-eqz v12, :cond_0

    .line 198
    move-object/from16 v0, p1

    move-object v1, v12

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->formatWrapper(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v0, "Wrapped by: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-static {v11, v9, v10}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->renderSuffix(Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V

    .line 202
    :cond_0
    move-object v13, p0

    invoke-static {p0, v9, v10}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->renderOn(Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V

    .line 203
    invoke-static {v11, v9, v10}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->renderSuffix(Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V

    .line 204
    const-string v0, "Text"

    move-object/from16 v14, p5

    invoke-interface {v10, v14, v9, v0}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 205
    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getExtendedStackTrace()[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    move-result-object v4

    const-string v1, ""

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v0 .. v8}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->formatElements(Ljava/lang/StringBuilder;Ljava/lang/String;I[Ljava/lang/StackTraceElement;[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method private static formatElements(Ljava/lang/StringBuilder;Ljava/lang/String;I[Ljava/lang/StackTraceElement;[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "commonCount"    # I
    .param p3, "causedTrace"    # [Ljava/lang/StackTraceElement;
    .param p4, "extStackTrace"    # [Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;
    .param p6, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .param p7, "suffix"    # Ljava/lang/String;
    .param p8, "lineSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "prefix",
            "commonCount",
            "causedTrace",
            "extStackTrace",
            "ignorePackages",
            "textRenderer",
            "suffix",
            "lineSeparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/logging/log4j/core/pattern/TextRenderer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 90
    .local p5, "ignorePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v6, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    if-eqz v8, :cond_4

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 96
    .local v0, "count":I
    const/4 v1, 0x0

    move v10, v0

    move v11, v1

    .end local v0    # "count":I
    .local v10, "count":I
    .local v11, "i":I
    :goto_0
    array-length v0, v7

    if-ge v11, v0, :cond_3

    .line 97
    aget-object v0, p3, v11

    invoke-static {v0, v8}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->ignoreElement(Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 98
    if-lez v10, :cond_1

    .line 99
    move-object v0, p0

    move-object v1, p1

    move v2, v10

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v5}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->appendSuppressedCount(Ljava/lang/StringBuilder;Ljava/lang/String;ILorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v10, 0x0

    .line 102
    :cond_1
    aget-object v0, v7, v11

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v5}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->formatEntry(Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 96
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 107
    .end local v11    # "i":I
    :cond_3
    if-lez v10, :cond_5

    .line 108
    move-object v0, p0

    move-object v1, p1

    move v2, v10

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v5}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->appendSuppressedCount(Ljava/lang/StringBuilder;Ljava/lang/String;ILorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 91
    .end local v10    # "count":I
    :cond_4
    :goto_2
    array-length v10, v7

    const/4 v0, 0x0

    move v11, v0

    :goto_3
    if-ge v11, v10, :cond_5

    aget-object v12, v7, v11

    .line 92
    .local v12, "element":Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;
    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v5}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->formatEntry(Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v12    # "element":Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 111
    :cond_5
    :goto_4
    if-eqz p2, :cond_6

    .line 112
    const-string v0, "Prefix"

    move-object v1, p1

    invoke-interface {v9, p1, p0, v0}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 113
    const-string v0, "\t... "

    const-string v2, "More"

    invoke-interface {v9, v0, p0, v2}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 114
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, p0, v2}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 115
    const-string v0, " more"

    invoke-interface {v9, v0, p0, v2}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 116
    move-object/from16 v0, p7

    invoke-static {v0, p0, v9}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->renderSuffix(Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V

    .line 117
    const-string v2, "Text"

    move-object/from16 v3, p8

    invoke-interface {v9, v3, p0, v2}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_5

    .line 111
    :cond_6
    move-object v1, p1

    move-object/from16 v0, p7

    move-object/from16 v3, p8

    .line 119
    :goto_5
    return-void
.end method

.method private static formatEntry(Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "extStackTraceElement"    # Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .param p4, "suffix"    # Ljava/lang/String;
    .param p5, "lineSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "extStackTraceElement",
            "sb",
            "prefix",
            "textRenderer",
            "suffix",
            "lineSeparator"
        }
    .end annotation

    .line 144
    const-string v0, "Prefix"

    invoke-interface {p3, p2, p1, v0}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 145
    const-string v0, "\tat "

    const-string v1, "At"

    invoke-interface {p3, v0, p1, v1}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, p1, p3}, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->renderOn(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V

    .line 147
    invoke-static {p4, p1, p3}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->renderSuffix(Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V

    .line 148
    const-string v0, "Text"

    invoke-interface {p3, p5, p1, v0}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method static formatExtendedStackTraceTo(Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/lang/StringBuilder;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p0, "src"    # Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .param p4, "suffix"    # Ljava/lang/String;
    .param p5, "lineSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "src",
            "sb",
            "ignorePackages",
            "textRenderer",
            "suffix",
            "lineSeparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/impl/ThrowableProxy;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/logging/log4j/core/pattern/TextRenderer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 174
    .local p2, "ignorePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v11, p1

    move-object/from16 v12, p3

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Name"

    invoke-interface {v12, v0, v11, v1}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 175
    const-string v0, ": "

    const-string v1, "NameMessageSeparator"

    invoke-interface {v12, v0, v11, v1}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Message"

    invoke-interface {v12, v0, v11, v1}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 177
    move-object/from16 v13, p4

    invoke-static {v13, v11, v12}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->renderSuffix(Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V

    .line 178
    const-string v0, "Text"

    move-object/from16 v14, p5

    invoke-interface {v12, v14, v11, v0}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 180
    .local v3, "causedTrace":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getExtendedStackTrace()[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    move-result-object v4

    const-string v1, ""

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v0 .. v8}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->formatElements(Ljava/lang/StringBuilder;Ljava/lang/String;I[Ljava/lang/StackTraceElement;[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getSuppressedProxies()[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v6

    const-string v5, "\t"

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v4 .. v10}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->formatSuppressed(Ljava/lang/StringBuilder;Ljava/lang/String;[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getCauseProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v6

    const-string v5, ""

    invoke-static/range {v4 .. v10}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->formatCause(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method private static formatSuppressed(Ljava/lang/StringBuilder;Ljava/lang/String;[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suppressedProxies"    # [Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .param p4, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .param p5, "suffix"    # Ljava/lang/String;
    .param p6, "lineSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "prefix",
            "suppressedProxies",
            "ignorePackages",
            "textRenderer",
            "suffix",
            "lineSeparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/core/impl/ThrowableProxy;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/logging/log4j/core/pattern/TextRenderer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 79
    .local p3, "ignorePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p2

    if-nez v0, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v11, v0, v2

    .line 83
    .local v11, "suppressedProxy":Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    const-string v5, "Suppressed: "

    move-object v3, p0

    move-object v4, p1

    move-object v6, v11

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v3 .. v10}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->formatThrowableProxy(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local v11    # "suppressedProxy":Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_1
    return-void
.end method

.method private static formatThrowableProxy(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "causeLabel"    # Ljava/lang/String;
    .param p3, "throwableProxy"    # Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .param p5, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .param p6, "suffix"    # Ljava/lang/String;
    .param p7, "lineSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "prefix",
            "causeLabel",
            "throwableProxy",
            "ignorePackages",
            "textRenderer",
            "suffix",
            "lineSeparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/impl/ThrowableProxy;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/logging/log4j/core/pattern/TextRenderer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    .local p4, "ignorePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    if-nez v11, :cond_0

    .line 64
    return-void

    .line 66
    :cond_0
    const-string v0, "Prefix"

    invoke-interface {v12, v10, v9, v0}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 67
    const-string v0, "CauseLabel"

    move-object/from16 v13, p2

    invoke-interface {v12, v13, v9, v0}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 68
    invoke-static {v11, v9, v12}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->renderOn(Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V

    .line 69
    move-object/from16 v14, p6

    invoke-static {v14, v9, v12}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->renderSuffix(Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V

    .line 70
    const-string v0, "Text"

    move-object/from16 v15, p7

    invoke-interface {v12, v15, v9, v0}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p3 .. p3}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getCommonElementCount()I

    move-result v2

    .line 72
    invoke-virtual/range {p3 .. p3}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getExtendedStackTrace()[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    move-result-object v4

    .line 71
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->formatElements(Ljava/lang/StringBuilder;Ljava/lang/String;I[Ljava/lang/StackTraceElement;[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getSuppressedProxies()[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->formatSuppressed(Ljava/lang/StringBuilder;Ljava/lang/String;[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getCauseProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v2

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->formatCause(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method static formatWrapper(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "cause"    # Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .param p3, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .param p4, "suffix"    # Ljava/lang/String;
    .param p5, "lineSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "cause",
            "ignorePackages",
            "textRenderer",
            "suffix",
            "lineSeparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lorg/apache/logging/log4j/core/impl/ThrowableProxy;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/logging/log4j/core/pattern/TextRenderer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 42
    .local p2, "ignorePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v9, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getCauseProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getCauseProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v12, v0

    .line 43
    .local v12, "caused":Ljava/lang/Throwable;
    if-eqz v12, :cond_1

    .line 44
    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getCauseProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v1

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->formatWrapper(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "Wrapped by: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {v11, p0, v10}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->renderSuffix(Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V

    .line 48
    :cond_1
    move-object/from16 v13, p1

    invoke-static {v13, p0, v10}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->renderOn(Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V

    .line 49
    invoke-static {v11, p0, v10}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->renderSuffix(Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V

    .line 50
    const-string v0, "Text"

    move-object/from16 v14, p5

    invoke-interface {v10, v14, p0, v0}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getCommonElementCount()I

    move-result v2

    .line 52
    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getExtendedStackTrace()[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    move-result-object v4

    .line 51
    const-string v1, ""

    move-object v0, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v0 .. v8}, Lorg/apache/logging/log4j/core/impl/ThrowableProxyRenderer;->formatElements(Ljava/lang/StringBuilder;Ljava/lang/String;I[Ljava/lang/StackTraceElement;[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private static ignoreElement(Ljava/lang/StackTraceElement;Ljava/util/List;)Z
    .locals 4
    .param p0, "element"    # Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "element",
            "ignorePackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 152
    .local p1, "ignorePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "className":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    const/4 v1, 0x1

    return v1

    .line 158
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 160
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static renderOn(Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V
    .locals 3
    .param p0, "src"    # Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .param p1, "output"    # Ljava/lang/StringBuilder;
    .param p2, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "src",
            "output",
            "textRenderer"
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Name"

    invoke-interface {p2, v1, p1, v2}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 212
    if-eqz v0, :cond_0

    .line 213
    const-string v1, ": "

    const-string v2, "NameMessageSeparator"

    invoke-interface {p2, v1, p1, v2}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 214
    const-string v1, "Message"

    invoke-interface {p2, v0, p1, v1}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 216
    :cond_0
    return-void
.end method

.method private static renderSuffix(Ljava/lang/String;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V
    .locals 2
    .param p0, "suffix"    # Ljava/lang/String;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "suffix",
            "sb",
            "textRenderer"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const-string v0, " "

    const-string v1, "Suffix"

    invoke-interface {p2, v0, p1, v1}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 124
    invoke-interface {p2, p0, p1, v1}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method
