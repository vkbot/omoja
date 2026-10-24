.class public final Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;
.super Ljava/lang/Object;
.source "ThrowableFormatOptions.java"


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "short.className"

.field protected static final DEFAULT:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

.field private static final DEFAULT_LINES:I = 0x7fffffff

.field public static final FILE_NAME:Ljava/lang/String; = "short.fileName"

.field private static final FULL:Ljava/lang/String; = "full"

.field public static final LINE_NUMBER:Ljava/lang/String; = "short.lineNumber"

.field public static final LOCALIZED_MESSAGE:Ljava/lang/String; = "short.localizedMessage"

.field public static final MESSAGE:Ljava/lang/String; = "short.message"

.field public static final METHOD_NAME:Ljava/lang/String; = "short.methodName"

.field private static final NONE:Ljava/lang/String; = "none"

.field private static final SHORT:Ljava/lang/String; = "short"


# instance fields
.field private final ignorePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final lines:I

.field private final separator:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;

.field private final textRenderer:Lorg/apache/logging/log4j/core/pattern/TextRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->DEFAULT:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    return-void
.end method

.method protected constructor <init>()V
    .locals 6

    .line 124
    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;-><init>(ILjava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;)V
    .locals 1
    .param p1, "lines"    # I
    .param p2, "separator"    # Ljava/lang/String;
    .param p4, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .param p5, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "lines",
            "separator",
            "ignorePackages",
            "textRenderer",
            "suffix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/logging/log4j/core/pattern/TextRenderer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 102
    .local p3, "ignorePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->lines:I

    .line 104
    if-nez p2, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->separator:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->ignorePackages:Ljava/util/List;

    .line 106
    if-nez p4, :cond_1

    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;->getInstance()Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p4

    :goto_1
    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->textRenderer:Lorg/apache/logging/log4j/core/pattern/TextRenderer;

    .line 107
    iput-object p5, p0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->suffix:Ljava/lang/String;

    .line 108
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;-><init>(ILjava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;
    .locals 21
    .param p0, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .line 230
    move-object/from16 v1, p0

    if-eqz v1, :cond_1a

    array-length v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 239
    :cond_0
    array-length v0, v1

    const-string v2, "short"

    const-string v3, "none"

    const-string v4, "full"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_3

    aget-object v0, v1, v6

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Strings;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    aget-object v0, v1, v6

    sget-object v8, Lorg/apache/logging/log4j/core/util/Patterns;->COMMA_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 241
    .local v8, "opts":[Ljava/lang/String;
    aget-object v0, v8, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 242
    .local v9, "first":Ljava/lang/String;
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, v9}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 243
    .local v10, "scanner":Ljava/util/Scanner;
    :try_start_0
    array-length v0, v8

    if-le v0, v7, :cond_2

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v10}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    :cond_1
    new-array v0, v5, [Ljava/lang/String;

    aput-object v9, v0, v6

    aget-object v11, v8, v7

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "options":[Ljava/lang/String;
    .local v0, "options":[Ljava/lang/String;
    goto :goto_0

    .line 247
    .end local v0    # "options":[Ljava/lang/String;
    .restart local p0    # "options":[Ljava/lang/String;
    :cond_2
    move-object v0, v1

    .end local p0    # "options":[Ljava/lang/String;
    .restart local v0    # "options":[Ljava/lang/String;
    :goto_0
    invoke-virtual {v10}, Ljava/util/Scanner;->close()V

    goto :goto_2

    .line 242
    .end local v0    # "options":[Ljava/lang/String;
    .restart local p0    # "options":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v2, v0

    .end local v8    # "opts":[Ljava/lang/String;
    .end local v9    # "first":Ljava/lang/String;
    .end local v10    # "scanner":Ljava/util/Scanner;
    .end local p0    # "options":[Ljava/lang/String;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 247
    .restart local v8    # "opts":[Ljava/lang/String;
    .restart local v9    # "first":Ljava/lang/String;
    .restart local v10    # "scanner":Ljava/util/Scanner;
    .restart local p0    # "options":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_2
    invoke-virtual {v10}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3

    .line 250
    .end local v8    # "opts":[Ljava/lang/String;
    .end local v9    # "first":Ljava/lang/String;
    .end local v10    # "scanner":Ljava/util/Scanner;
    :cond_3
    move-object v0, v1

    .end local p0    # "options":[Ljava/lang/String;
    .restart local v0    # "options":[Ljava/lang/String;
    :goto_2
    sget-object v1, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->DEFAULT:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    iget v8, v1, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->lines:I

    .line 251
    .local v8, "lines":I
    iget-object v9, v1, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->separator:Ljava/lang/String;

    .line 252
    .local v9, "separator":Ljava/lang/String;
    iget-object v10, v1, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->ignorePackages:Ljava/util/List;

    .line 253
    .local v10, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v11, v1, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->textRenderer:Lorg/apache/logging/log4j/core/pattern/TextRenderer;

    .line 254
    .local v11, "ansiRenderer":Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->getSuffix()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "suffix":Ljava/lang/String;
    array-length v12, v0

    move v13, v6

    :goto_3
    if-ge v13, v12, :cond_19

    aget-object v14, v0, v13

    .line 256
    .local v14, "rawOption":Ljava/lang/String;
    if-eqz v14, :cond_17

    .line 257
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 258
    .local v15, "option":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 p0, v0

    move/from16 v16, v6

    move v6, v7

    goto/16 :goto_8

    .line 260
    :cond_4
    const-string v6, "separator("

    invoke-virtual {v15, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    const-string v5, ")"

    if-eqz v17, :cond_5

    invoke-virtual {v15, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 261
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v15, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 p0, v0

    move-object v9, v5

    move v6, v7

    const/16 v16, 0x0

    .end local v9    # "separator":Ljava/lang/String;
    .local v5, "separator":Ljava/lang/String;
    goto/16 :goto_8

    .line 262
    .end local v5    # "separator":Ljava/lang/String;
    .restart local v9    # "separator":Ljava/lang/String;
    :cond_5
    const-string v6, "filters("

    invoke-virtual {v15, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-virtual {v15, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 263
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v15, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "filterStr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 265
    sget-object v6, Lorg/apache/logging/log4j/core/util/Patterns;->COMMA_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 266
    .local v6, "array":[Ljava/lang/String;
    array-length v7, v6

    if-lez v7, :cond_7

    .line 267
    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 p0, v0

    .end local v0    # "options":[Ljava/lang/String;
    .restart local p0    # "options":[Ljava/lang/String;
    array-length v0, v6

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v7

    .line 268
    array-length v0, v6

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v0, :cond_9

    aget-object v19, v6, v7

    .line 269
    .local v19, "token":Ljava/lang/String;
    move/from16 v20, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 270
    .end local v19    # "token":Ljava/lang/String;
    .local v0, "token":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_6

    .line 271
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    .end local v0    # "token":Ljava/lang/String;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v20

    goto :goto_4

    .line 266
    .end local p0    # "options":[Ljava/lang/String;
    .local v0, "options":[Ljava/lang/String;
    :cond_7
    move-object/from16 p0, v0

    .end local v0    # "options":[Ljava/lang/String;
    .restart local p0    # "options":[Ljava/lang/String;
    goto :goto_5

    .line 264
    .end local v6    # "array":[Ljava/lang/String;
    .end local p0    # "options":[Ljava/lang/String;
    .restart local v0    # "options":[Ljava/lang/String;
    :cond_8
    move-object/from16 p0, v0

    .line 276
    .end local v0    # "options":[Ljava/lang/String;
    .end local v5    # "filterStr":Ljava/lang/String;
    .restart local p0    # "options":[Ljava/lang/String;
    :cond_9
    :goto_5
    const/4 v6, 0x1

    const/16 v16, 0x0

    goto/16 :goto_8

    .line 262
    .end local p0    # "options":[Ljava/lang/String;
    .restart local v0    # "options":[Ljava/lang/String;
    :cond_a
    move-object/from16 p0, v0

    .line 276
    .end local v0    # "options":[Ljava/lang/String;
    .restart local p0    # "options":[Ljava/lang/String;
    invoke-virtual {v15, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 277
    const/4 v0, 0x0

    move v8, v0

    const/4 v6, 0x1

    const/16 v16, 0x0

    .end local v8    # "lines":I
    .local v0, "lines":I
    goto/16 :goto_8

    .line 278
    .end local v0    # "lines":I
    .restart local v8    # "lines":I
    :cond_b
    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "short.className"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 279
    const-string v0, "short.methodName"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "short.lineNumber"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 280
    const-string v0, "short.fileName"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "short.message"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 281
    const-string v0, "short.localizedMessage"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v6, 0x1

    const/16 v16, 0x0

    goto/16 :goto_7

    .line 283
    :cond_c
    const-string v0, "ansi("

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "ansi"

    if-eqz v6, :cond_d

    invoke-virtual {v15, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    :cond_d
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 284
    :cond_e
    invoke-static {}, Lorg/apache/logging/log4j/core/util/Loader;->isJansiAvailable()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 285
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v0, ""

    const/4 v6, 0x1

    goto :goto_6

    .line 286
    :cond_f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v15, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_6
    nop

    .line 287
    .local v0, "styleMapStr":Ljava/lang/String;
    new-instance v5, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;

    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v16, 0x0

    aput-object v18, v6, v16

    const/16 v17, 0x1

    aput-object v0, v6, v17

    sget-object v7, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->DefaultExceptionStyleMap:Ljava/util/Map;

    invoke-direct {v5, v6, v7}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;-><init>([Ljava/lang/String;Ljava/util/Map;)V

    move-object v0, v5

    .line 289
    .end local v11    # "ansiRenderer":Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .local v0, "ansiRenderer":Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    move-object v11, v0

    const/4 v6, 0x1

    goto/16 :goto_8

    .line 290
    .end local v0    # "ansiRenderer":Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .restart local v11    # "ansiRenderer":Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    :cond_10
    const/16 v16, 0x0

    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    const-string v5, "You requested ANSI exception rendering but JANSI is not on the classpath. Please see https://logging.apache.org/log4j/2.x/runtime-dependencies.html"

    invoke-virtual {v0, v5}, Lorg/apache/logging/log4j/status/StatusLogger;->warn(Ljava/lang/String;)V

    const/4 v6, 0x1

    goto :goto_8

    .line 293
    :cond_11
    const/16 v16, 0x0

    const-string v0, "S("

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v15, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 294
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v15, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    const/4 v6, 0x1

    .end local v1    # "suffix":Ljava/lang/String;
    .local v0, "suffix":Ljava/lang/String;
    goto :goto_8

    .line 295
    .end local v0    # "suffix":Ljava/lang/String;
    .restart local v1    # "suffix":Ljava/lang/String;
    :cond_12
    const-string v0, "suffix("

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v15, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 296
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v15, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local v1    # "suffix":Ljava/lang/String;
    .restart local v0    # "suffix":Ljava/lang/String;
    goto :goto_8

    .line 295
    .end local v0    # "suffix":Ljava/lang/String;
    .restart local v1    # "suffix":Ljava/lang/String;
    :cond_13
    const/4 v6, 0x1

    .line 297
    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 298
    invoke-static {v15}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v8, v0

    .end local v8    # "lines":I
    .local v0, "lines":I
    goto :goto_8

    .line 280
    .end local v0    # "lines":I
    .restart local v8    # "lines":I
    :cond_14
    const/4 v6, 0x1

    const/16 v16, 0x0

    goto :goto_7

    .line 279
    :cond_15
    const/4 v6, 0x1

    const/16 v16, 0x0

    goto :goto_7

    .line 278
    :cond_16
    const/4 v6, 0x1

    const/16 v16, 0x0

    .line 282
    :goto_7
    const/4 v0, 0x2

    move v8, v0

    .end local v8    # "lines":I
    .restart local v0    # "lines":I
    goto :goto_8

    .line 256
    .end local v15    # "option":Ljava/lang/String;
    .end local p0    # "options":[Ljava/lang/String;
    .local v0, "options":[Ljava/lang/String;
    .restart local v8    # "lines":I
    :cond_17
    move-object/from16 p0, v0

    move/from16 v16, v6

    move v6, v7

    .line 255
    .end local v0    # "options":[Ljava/lang/String;
    .end local v14    # "rawOption":Ljava/lang/String;
    .restart local p0    # "options":[Ljava/lang/String;
    :cond_18
    :goto_8
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move v7, v6

    move/from16 v6, v16

    const/4 v5, 0x2

    goto/16 :goto_3

    .line 302
    .end local p0    # "options":[Ljava/lang/String;
    .restart local v0    # "options":[Ljava/lang/String;
    :cond_19
    move-object/from16 p0, v0

    .end local v0    # "options":[Ljava/lang/String;
    .restart local p0    # "options":[Ljava/lang/String;
    new-instance v0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    move-object v13, v0

    move v14, v8

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v18, v1

    invoke-direct/range {v13 .. v18}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;-><init>(ILjava/lang/String;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;)V

    return-object v0

    .line 231
    .end local v1    # "suffix":Ljava/lang/String;
    .end local v8    # "lines":I
    .end local v9    # "separator":Ljava/lang/String;
    .end local v10    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "ansiRenderer":Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    :cond_1a
    :goto_9
    sget-object v0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->DEFAULT:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    return-object v0
.end method


# virtual methods
.method public allLines()Z
    .locals 2

    .line 169
    iget v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->lines:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public anyLines()Z
    .locals 1

    .line 178
    iget v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->lines:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIgnorePackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->ignorePackages:Ljava/util/List;

    return-object v0
.end method

.method public getLines()I
    .locals 1

    .line 133
    iget v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->lines:I

    return v0
.end method

.method public getSeparator()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->separator:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public getTextRenderer()Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->textRenderer:Lorg/apache/logging/log4j/core/pattern/TextRenderer;

    return-object v0
.end method

.method public hasPackages()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->ignorePackages:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public minLines(I)I
    .locals 1
    .param p1, "maxLines"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "maxLines"
        }
    .end annotation

    .line 189
    iget v0, p0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->lines:I

    if-le v0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v0, "s":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->allLines()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "full"

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->lines:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "short"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->anyLines()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->lines:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, "{separator("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->hasPackages()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 212
    const-string v2, "{filters("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v2, p0, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->ignorePackages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 214
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    .end local v3    # "p":Ljava/lang/String;
    goto :goto_1

    .line 216
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
