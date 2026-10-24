.class public final Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;
.super Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;
.source "Rfc5424Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;,
        Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$FieldFormatter;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "layout"
    name = "Rfc5424Layout"
    printObject = true
.end annotation


# static fields
.field private static final COMPONENT_KEY:Ljava/lang/String; = "RFC5424-Converter"

.field public static final DEFAULT_ENTERPRISE_NUMBER:I = 0x468c

.field public static final DEFAULT_ID:Ljava/lang/String; = "Audit"

.field public static final DEFAULT_MDCID:Ljava/lang/String; = "mdc"

.field private static final LF:Ljava/lang/String; = "\n"

.field private static final MILLIS_PER_MINUTE:I = 0xea60

.field private static final MINUTES_PER_HOUR:I = 0x3c

.field public static final NEWLINE_PATTERN:Ljava/util/regex/Pattern;

.field public static final PARAM_VALUE_ESCAPE_PATTERN:Ljava/util/regex/Pattern;

.field private static final THREE_DIGITS:I = 0x64

.field private static final TWO_DIGITS:I = 0xa


# instance fields
.field private final appName:Ljava/lang/String;

.field private final configName:Ljava/lang/String;

.field private final defaultId:Ljava/lang/String;

.field private final enterpriseNumber:I

.field private final escapeNewLine:Ljava/lang/String;

.field private final eventPrefix:Ljava/lang/String;

.field private final exceptionFormatters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private final facility:Lorg/apache/logging/log4j/core/net/Facility;

.field private final fieldFormatters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$FieldFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private final includeMdc:Z

.field private final includeNewLine:Z

.field private lastTimestamp:J

.field private final listChecker:Lorg/apache/logging/log4j/core/layout/internal/ListChecker;

.field private final localHostName:Ljava/lang/String;

.field private final mdcExcludes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mdcId:Ljava/lang/String;

.field private final mdcIncludes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mdcPrefix:Ljava/lang/String;

.field private final mdcRequired:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mdcSdId:Lorg/apache/logging/log4j/message/StructuredDataId;

.field private final messageId:Ljava/lang/String;

.field private final procId:Ljava/lang/String;

.field private timestamppStr:Ljava/lang/String;

.field private final useTlsMessageFormat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    const-string v0, "\\r?\\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    .line 88
    const-string v0, "[\\\"\\]\\\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->PARAM_VALUE_ESCAPE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/net/Facility;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z[Lorg/apache/logging/log4j/core/layout/LoggerFields;)V
    .locals 21
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "facility"    # Lorg/apache/logging/log4j/core/net/Facility;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "ein"    # I
    .param p5, "includeMDC"    # Z
    .param p6, "includeNL"    # Z
    .param p7, "escapeNL"    # Ljava/lang/String;
    .param p8, "mdcId"    # Ljava/lang/String;
    .param p9, "mdcPrefix"    # Ljava/lang/String;
    .param p10, "eventPrefix"    # Ljava/lang/String;
    .param p11, "appName"    # Ljava/lang/String;
    .param p12, "messageId"    # Ljava/lang/String;
    .param p13, "excludes"    # Ljava/lang/String;
    .param p14, "includes"    # Ljava/lang/String;
    .param p15, "required"    # Ljava/lang/String;
    .param p16, "charset"    # Ljava/nio/charset/Charset;
    .param p17, "exceptionPattern"    # Ljava/lang/String;
    .param p18, "useTLSMessageFormat"    # Z
    .param p19, "loggerFields"    # [Lorg/apache/logging/log4j/core/layout/LoggerFields;
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
            0x10,
            0x10,
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
            "config",
            "facility",
            "id",
            "ein",
            "includeMDC",
            "includeNL",
            "escapeNL",
            "mdcId",
            "mdcPrefix",
            "eventPrefix",
            "appName",
            "messageId",
            "excludes",
            "includes",
            "required",
            "charset",
            "exceptionPattern",
            "useTLSMessageFormat",
            "loggerFields"
        }
    .end annotation

    .line 134
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p13

    move-object/from16 v3, p14

    move-object/from16 v4, p15

    move-object/from16 v5, p17

    move-object/from16 v6, p16

    invoke-direct {v0, v6}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;-><init>(Ljava/nio/charset/Charset;)V

    .line 122
    const-wide/16 v7, -0x1

    iput-wide v7, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->lastTimestamp:J

    .line 135
    const-class v7, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;

    invoke-static {v1, v7}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->createPatternParser(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/Class;)Lorg/apache/logging/log4j/core/pattern/PatternParser;

    move-result-object v7

    .line 136
    .local v7, "exceptionParser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    const/4 v8, 0x0

    if-nez v5, :cond_0

    move-object v9, v8

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v5}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    :goto_0
    iput-object v9, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->exceptionFormatters:Ljava/util/List;

    .line 137
    move-object/from16 v9, p2

    iput-object v9, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->facility:Lorg/apache/logging/log4j/core/net/Facility;

    .line 138
    if-nez p3, :cond_1

    const-string v10, "Audit"

    goto :goto_1

    :cond_1
    move-object/from16 v10, p3

    :goto_1
    iput-object v10, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->defaultId:Ljava/lang/String;

    .line 139
    move/from16 v10, p4

    iput v10, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->enterpriseNumber:I

    .line 140
    move/from16 v11, p5

    iput-boolean v11, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->includeMdc:Z

    .line 141
    move/from16 v12, p6

    iput-boolean v12, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->includeNewLine:Z

    .line 142
    if-nez p7, :cond_2

    move-object v13, v8

    goto :goto_2

    :cond_2
    invoke-static/range {p7 .. p7}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :goto_2
    iput-object v13, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->escapeNewLine:Ljava/lang/String;

    .line 143
    if-eqz p8, :cond_3

    move-object/from16 v13, p8

    goto :goto_3

    :cond_3
    if-nez p3, :cond_4

    const-string v13, "mdc"

    goto :goto_3

    :cond_4
    move-object/from16 v13, p3

    :goto_3
    iput-object v13, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcId:Ljava/lang/String;

    .line 144
    new-instance v13, Lorg/apache/logging/log4j/message/StructuredDataId;

    iget-object v14, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcId:Ljava/lang/String;

    iget v15, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->enterpriseNumber:I

    invoke-direct {v13, v14, v15, v8, v8}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v13, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcSdId:Lorg/apache/logging/log4j/message/StructuredDataId;

    .line 145
    move-object/from16 v13, p9

    iput-object v13, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcPrefix:Ljava/lang/String;

    .line 146
    move-object/from16 v14, p10

    iput-object v14, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->eventPrefix:Ljava/lang/String;

    .line 147
    move-object/from16 v15, p11

    iput-object v15, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->appName:Ljava/lang/String;

    .line 148
    move-object/from16 v8, p12

    iput-object v8, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->messageId:Ljava/lang/String;

    .line 149
    move/from16 v5, p18

    iput-boolean v5, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->useTlsMessageFormat:Z

    .line 150
    invoke-static {}, Lorg/apache/logging/log4j/core/util/NetUtils;->getLocalHostname()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->localHostName:Ljava/lang/String;

    .line 151
    const/4 v5, 0x0

    .line 152
    .local v5, "checker":Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    const/16 v16, 0x0

    if-eqz v2, :cond_7

    .line 153
    move-object/from16 v17, v5

    .end local v5    # "checker":Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    .local v17, "checker":Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    sget-object v5, Lorg/apache/logging/log4j/core/util/Patterns;->COMMA_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "array":[Ljava/lang/String;
    array-length v2, v5

    if-lez v2, :cond_6

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    array-length v6, v5

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcExcludes:Ljava/util/List;

    .line 156
    array-length v2, v5

    move/from16 v6, v16

    :goto_4
    if-ge v6, v2, :cond_5

    aget-object v18, v5, v6

    .line 157
    .local v18, "str":Ljava/lang/String;
    move/from16 v19, v2

    iget-object v2, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcExcludes:Ljava/util/List;

    move-object/from16 v20, v5

    .end local v5    # "array":[Ljava/lang/String;
    .local v20, "array":[Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v18    # "str":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v19

    move-object/from16 v5, v20

    goto :goto_4

    .line 159
    .end local v20    # "array":[Ljava/lang/String;
    .restart local v5    # "array":[Ljava/lang/String;
    :cond_5
    move-object/from16 v20, v5

    .end local v5    # "array":[Ljava/lang/String;
    .restart local v20    # "array":[Ljava/lang/String;
    new-instance v2, Lorg/apache/logging/log4j/core/layout/internal/ExcludeChecker;

    iget-object v5, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcExcludes:Ljava/util/List;

    invoke-direct {v2, v5}, Lorg/apache/logging/log4j/core/layout/internal/ExcludeChecker;-><init>(Ljava/util/List;)V

    move-object v5, v2

    const/4 v2, 0x0

    .end local v17    # "checker":Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    .local v5, "checker":Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    goto :goto_5

    .line 161
    .end local v20    # "array":[Ljava/lang/String;
    .local v5, "array":[Ljava/lang/String;
    .restart local v17    # "checker":Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    :cond_6
    move-object/from16 v20, v5

    .end local v5    # "array":[Ljava/lang/String;
    .restart local v20    # "array":[Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcExcludes:Ljava/util/List;

    move-object/from16 v5, v17

    .line 163
    .end local v17    # "checker":Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    .end local v20    # "array":[Ljava/lang/String;
    .local v5, "checker":Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    :goto_5
    goto :goto_6

    .line 164
    :cond_7
    move-object/from16 v17, v5

    const/4 v2, 0x0

    .end local v5    # "checker":Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    .restart local v17    # "checker":Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    iput-object v2, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcExcludes:Ljava/util/List;

    .line 166
    .end local v17    # "checker":Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    .restart local v5    # "checker":Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    :goto_6
    if-eqz v3, :cond_a

    .line 167
    sget-object v2, Lorg/apache/logging/log4j/core/util/Patterns;->COMMA_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "array":[Ljava/lang/String;
    array-length v6, v2

    if-lez v6, :cond_9

    .line 169
    new-instance v6, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcIncludes:Ljava/util/List;

    .line 170
    array-length v3, v2

    move/from16 v6, v16

    :goto_7
    if-ge v6, v3, :cond_8

    aget-object v17, v2, v6

    .line 171
    .local v17, "str":Ljava/lang/String;
    move-object/from16 v18, v2

    .end local v2    # "array":[Ljava/lang/String;
    .local v18, "array":[Ljava/lang/String;
    iget-object v2, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcIncludes:Ljava/util/List;

    move/from16 v19, v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v17    # "str":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v18

    move/from16 v3, v19

    goto :goto_7

    .line 173
    .end local v18    # "array":[Ljava/lang/String;
    .restart local v2    # "array":[Ljava/lang/String;
    :cond_8
    move-object/from16 v18, v2

    .end local v2    # "array":[Ljava/lang/String;
    .restart local v18    # "array":[Ljava/lang/String;
    new-instance v2, Lorg/apache/logging/log4j/core/layout/internal/IncludeChecker;

    iget-object v3, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcIncludes:Ljava/util/List;

    invoke-direct {v2, v3}, Lorg/apache/logging/log4j/core/layout/internal/IncludeChecker;-><init>(Ljava/util/List;)V

    move-object v5, v2

    const/4 v2, 0x0

    goto :goto_8

    .line 175
    .end local v18    # "array":[Ljava/lang/String;
    .restart local v2    # "array":[Ljava/lang/String;
    :cond_9
    move-object/from16 v18, v2

    .end local v2    # "array":[Ljava/lang/String;
    .restart local v18    # "array":[Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcIncludes:Ljava/util/List;

    .line 177
    .end local v18    # "array":[Ljava/lang/String;
    :goto_8
    goto :goto_9

    .line 178
    :cond_a
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcIncludes:Ljava/util/List;

    .line 180
    :goto_9
    if-eqz v4, :cond_d

    .line 181
    sget-object v2, Lorg/apache/logging/log4j/core/util/Patterns;->COMMA_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 182
    .restart local v2    # "array":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_c

    .line 183
    new-instance v3, Ljava/util/ArrayList;

    array-length v6, v2

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcRequired:Ljava/util/List;

    .line 184
    array-length v3, v2

    move/from16 v6, v16

    :goto_a
    if-ge v6, v3, :cond_b

    aget-object v16, v2, v6

    .line 185
    .local v16, "str":Ljava/lang/String;
    move-object/from16 v17, v2

    .end local v2    # "array":[Ljava/lang/String;
    .local v17, "array":[Ljava/lang/String;
    iget-object v2, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcRequired:Ljava/util/List;

    move/from16 v18, v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v16    # "str":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v17

    move/from16 v3, v18

    goto :goto_a

    .end local v17    # "array":[Ljava/lang/String;
    .restart local v2    # "array":[Ljava/lang/String;
    :cond_b
    move-object/from16 v17, v2

    .end local v2    # "array":[Ljava/lang/String;
    .restart local v17    # "array":[Ljava/lang/String;
    const/4 v2, 0x0

    goto :goto_b

    .line 188
    .end local v17    # "array":[Ljava/lang/String;
    .restart local v2    # "array":[Ljava/lang/String;
    :cond_c
    move-object/from16 v17, v2

    .end local v2    # "array":[Ljava/lang/String;
    .restart local v17    # "array":[Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcRequired:Ljava/util/List;

    .line 191
    .end local v17    # "array":[Ljava/lang/String;
    :goto_b
    goto :goto_c

    .line 192
    :cond_d
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcRequired:Ljava/util/List;

    .line 194
    :goto_c
    if-eqz v5, :cond_e

    move-object v3, v5

    goto :goto_d

    :cond_e
    sget-object v3, Lorg/apache/logging/log4j/core/layout/internal/ListChecker;->NOOP_CHECKER:Lorg/apache/logging/log4j/core/layout/internal/ListChecker$NoopChecker;

    :goto_d
    iput-object v3, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->listChecker:Lorg/apache/logging/log4j/core/layout/internal/ListChecker;

    .line 195
    if-nez v1, :cond_f

    move-object v3, v2

    goto :goto_e

    :cond_f
    invoke-interface/range {p1 .. p1}, Lorg/apache/logging/log4j/core/config/Configuration;->getName()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "name":Ljava/lang/String;
    :goto_e
    invoke-static {v3}, Lorg/apache/logging/log4j/util/Strings;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    move-object v2, v3

    :cond_10
    iput-object v2, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->configName:Ljava/lang/String;

    .line 197
    move-object/from16 v2, p19

    invoke-direct {v0, v2, v1}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->createFieldFormatters([Lorg/apache/logging/log4j/core/layout/LoggerFields;Lorg/apache/logging/log4j/core/config/Configuration;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->fieldFormatters:Ljava/util/Map;

    .line 198
    invoke-static {}, Lorg/apache/logging/log4j/util/ProcessIdUtil;->getProcessId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->procId:Ljava/lang/String;

    .line 199
    return-void
.end method

.method static synthetic access$000(Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;

    .line 71
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->eventPrefix:Ljava/lang/String;

    return-object v0
.end method

.method private addStructuredData(Ljava/util/Map;Lorg/apache/logging/log4j/message/StructuredDataMessage;)V
    .locals 6
    .param p2, "data"    # Lorg/apache/logging/log4j/message/StructuredDataMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sdElements",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;",
            ">;",
            "Lorg/apache/logging/log4j/message/StructuredDataMessage;",
            ")V"
        }
    .end annotation

    .line 415
    .local p1, "sdElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;>;"
    invoke-virtual {p2}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getData()Ljava/util/Map;

    move-result-object v0

    .line 416
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getId()Lorg/apache/logging/log4j/message/StructuredDataId;

    move-result-object v1

    .line 417
    .local v1, "id":Lorg/apache/logging/log4j/message/StructuredDataId;
    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->getId(Lorg/apache/logging/log4j/message/StructuredDataId;)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "sdId":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 420
    invoke-virtual {v1}, Lorg/apache/logging/log4j/message/StructuredDataId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;

    .line 421
    .local v3, "union":Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;
    invoke-virtual {v3, v0}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;->union(Ljava/util/Map;)V

    .line 422
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .end local v3    # "union":Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;
    goto :goto_0

    .line 424
    :cond_0
    new-instance v3, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->eventPrefix:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v0, v4, v5}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;-><init>(Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;Ljava/util/Map;Ljava/lang/String;Z)V

    .line 425
    .local v3, "formattedData":Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .end local v3    # "formattedData":Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;
    :goto_0
    return-void
.end method

.method private appendAppName(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->appName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->configName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 315
    :cond_1
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    :goto_0
    return-void
.end method

.method private appendHostName(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->localHostName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    return-void
.end method

.method private appendMap(Ljava/lang/String;Ljava/util/Map;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/layout/internal/ListChecker;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "sb"    # Ljava/lang/StringBuilder;
    .param p4, "checker"    # Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "prefix",
            "map",
            "sb",
            "checker"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Lorg/apache/logging/log4j/core/layout/internal/ListChecker;",
            ")V"
        }
    .end annotation

    .line 553
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 554
    .local v0, "sorted":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 555
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p4, v3}, Lorg/apache/logging/log4j/core/layout/internal/ListChecker;->check(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 556
    const/16 v3, 0x20

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 557
    if-eqz p1, :cond_0

    .line 558
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->escapeSDParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->escapeNewLine:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->escapeNewlines(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 561
    .local v3, "safeKey":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->escapeSDParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->escapeNewLine:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->escapeNewlines(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 562
    .local v4, "safeValue":Ljava/lang/String;
    invoke-static {p3, v3, v4}, Lorg/apache/logging/log4j/util/StringBuilders;->appendKeyDqValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 564
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "safeKey":Ljava/lang/String;
    .end local v4    # "safeValue":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 565
    :cond_2
    return-void
.end method

.method private appendMessage(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 6
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "buffer",
            "event"
        }
    .end annotation

    .line 336
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    .line 338
    .local v0, "message":Lorg/apache/logging/log4j/message/Message;
    instance-of v1, v0, Lorg/apache/logging/log4j/message/StructuredDataMessage;

    if-nez v1, :cond_1

    instance-of v1, v0, Lorg/apache/logging/log4j/message/MessageCollectionMessage;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "text":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 342
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->escapeNewLine:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->escapeNewlines(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_2
    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->exceptionFormatters:Ljava/util/List;

    const-string v3, "\n"

    if-eqz v2, :cond_4

    invoke-interface {p2}, Lorg/apache/logging/log4j/core/LogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .local v2, "exception":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->exceptionFormatters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 348
    .local v5, "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    invoke-virtual {v5, p2, v2}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 349
    .end local v5    # "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    goto :goto_2

    .line 350
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->escapeNewLine:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->escapeNewlines(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .end local v2    # "exception":Ljava/lang/StringBuilder;
    :cond_4
    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->includeNewLine:Z

    if-eqz v2, :cond_5

    .line 353
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_5
    return-void
.end method

.method private appendMessageId(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/message/Message;)V
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "buffer",
            "message"
        }
    .end annotation

    .line 324
    instance-of v0, p2, Lorg/apache/logging/log4j/message/StructuredDataMessage;

    .line 325
    .local v0, "isStructured":Z
    if-eqz v0, :cond_0

    move-object v1, p2

    check-cast v1, Lorg/apache/logging/log4j/message/StructuredDataMessage;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 326
    .local v1, "type":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 328
    :cond_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->messageId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 329
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 331
    :cond_2
    const/16 v2, 0x2d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    :goto_1
    return-void
.end method

.method private appendPriority(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/Level;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "logLevel"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "buffer",
            "logLevel"
        }
    .end annotation

    .line 292
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->facility:Lorg/apache/logging/log4j/core/net/Facility;

    invoke-static {v0, p2}, Lorg/apache/logging/log4j/core/net/Priority;->getPriority(Lorg/apache/logging/log4j/core/net/Facility;Lorg/apache/logging/log4j/Level;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    const-string v0, ">1 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    return-void
.end method

.method private appendProcessId(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->getProcId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    return-void
.end method

.method private appendSpace(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 302
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    return-void
.end method

.method private appendStructuredElements(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 10
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "buffer",
            "event"
        }
    .end annotation

    .line 358
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    .line 359
    .local v0, "message":Lorg/apache/logging/log4j/message/Message;
    instance-of v1, v0, Lorg/apache/logging/log4j/message/StructuredDataMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    instance-of v1, v0, Lorg/apache/logging/log4j/message/StructuredDataCollectionMessage;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 362
    .local v1, "isStructured":Z
    :goto_1
    const/16 v3, 0x2d

    if-nez v1, :cond_2

    iget-object v4, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->fieldFormatters:Ljava/util/Map;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->includeMdc:Z

    if-nez v4, :cond_2

    .line 363
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    return-void

    .line 367
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 368
    .local v4, "sdElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;>;"
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/LogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->toMap()Ljava/util/Map;

    move-result-object v5

    .line 370
    .local v5, "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcRequired:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 371
    invoke-direct {p0, v5}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->checkRequired(Ljava/util/Map;)V

    .line 374
    :cond_3
    iget-object v6, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->fieldFormatters:Ljava/util/Map;

    if-eqz v6, :cond_4

    .line 375
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 376
    .local v7, "sdElement":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$FieldFormatter;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 377
    .local v8, "sdId":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$FieldFormatter;

    invoke-virtual {v9, p2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$FieldFormatter;->format(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;

    move-result-object v9

    .line 378
    .local v9, "elem":Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;
    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .end local v7    # "sdElement":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$FieldFormatter;>;"
    .end local v8    # "sdId":Ljava/lang/String;
    .end local v9    # "elem":Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;
    goto :goto_2

    .line 382
    :cond_4
    iget-boolean v6, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->includeMdc:Z

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 383
    iget-object v6, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcSdId:Lorg/apache/logging/log4j/message/StructuredDataId;

    invoke-virtual {v6}, Lorg/apache/logging/log4j/message/StructuredDataId;->toString()Ljava/lang/String;

    move-result-object v6

    .line 384
    .local v6, "mdcSdIdStr":Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;

    .line 385
    .local v7, "union":Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;
    if-eqz v7, :cond_5

    .line 386
    invoke-virtual {v7, v5}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;->union(Ljava/util/Map;)V

    .line 387
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 389
    :cond_5
    new-instance v8, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;

    iget-object v9, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcPrefix:Ljava/lang/String;

    invoke-direct {v8, p0, v5, v9, v2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;-><init>(Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;Ljava/util/Map;Ljava/lang/String;Z)V

    move-object v2, v8

    .line 390
    .local v2, "formattedContextMap":Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;
    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .end local v2    # "formattedContextMap":Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;
    .end local v6    # "mdcSdIdStr":Ljava/lang/String;
    .end local v7    # "union":Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;
    :cond_6
    :goto_3
    if-eqz v1, :cond_9

    .line 395
    instance-of v2, v0, Lorg/apache/logging/log4j/message/MessageCollectionMessage;

    if-eqz v2, :cond_8

    .line 396
    move-object v2, v0

    check-cast v2, Lorg/apache/logging/log4j/message/StructuredDataCollectionMessage;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/message/StructuredDataCollectionMessage;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/logging/log4j/message/StructuredDataMessage;

    .line 397
    .local v6, "data":Lorg/apache/logging/log4j/message/StructuredDataMessage;
    invoke-direct {p0, v4, v6}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->addStructuredData(Ljava/util/Map;Lorg/apache/logging/log4j/message/StructuredDataMessage;)V

    .line 398
    .end local v6    # "data":Lorg/apache/logging/log4j/message/StructuredDataMessage;
    goto :goto_4

    :cond_7
    goto :goto_5

    .line 400
    :cond_8
    move-object v2, v0

    check-cast v2, Lorg/apache/logging/log4j/message/StructuredDataMessage;

    invoke-direct {p0, v4, v2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->addStructuredData(Ljava/util/Map;Lorg/apache/logging/log4j/message/StructuredDataMessage;)V

    .line 404
    :cond_9
    :goto_5
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 405
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    return-void

    .line 409
    :cond_a
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 410
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;

    iget-object v8, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->listChecker:Lorg/apache/logging/log4j/core/layout/internal/ListChecker;

    invoke-direct {p0, v6, v7, p1, v8}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->formatStructuredElement(Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/layout/internal/ListChecker;)V

    .line 411
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;>;"
    goto :goto_6

    .line 412
    :cond_b
    return-void
.end method

.method private appendTimestamp(Ljava/lang/StringBuilder;J)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "milliseconds"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "buffer",
            "milliseconds"
        }
    .end annotation

    .line 298
    invoke-direct {p0, p2, p3}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->computeTimeStampString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    return-void
.end method

.method private checkRequired(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 543
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcRequired:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 544
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 545
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 548
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 546
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/LoggingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Required key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is missing from the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/logging/log4j/LoggingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private computeTimeStampString(J)Ljava/lang/String;
    .locals 9
    .param p1, "now"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "now"
        }
    .end annotation

    .line 450
    monitor-enter p0

    .line 451
    :try_start_0
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->lastTimestamp:J

    .line 452
    .local v0, "last":J
    iget-wide v2, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->lastTimestamp:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 453
    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->timestamppStr:Ljava/lang/String;

    monitor-exit p0

    return-object v2

    .line 455
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .local v2, "buffer":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 459
    .local v3, "cal":Ljava/util/Calendar;
    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 460
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const/16 v5, 0x2d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 462
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v4

    const/16 v4, 0xa

    invoke-direct {p0, v6, v4, v2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->pad(IILjava/lang/StringBuilder;)V

    .line 463
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {p0, v6, v4, v2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->pad(IILjava/lang/StringBuilder;)V

    .line 465
    const/16 v6, 0x54

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {p0, v6, v4, v2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->pad(IILjava/lang/StringBuilder;)V

    .line 467
    const/16 v6, 0x3a

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 468
    const/16 v7, 0xc

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-direct {p0, v7, v4, v2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->pad(IILjava/lang/StringBuilder;)V

    .line 469
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    const/16 v7, 0xd

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-direct {p0, v7, v4, v2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->pad(IILjava/lang/StringBuilder;)V

    .line 471
    const/16 v7, 0x2e

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    const/16 v7, 0xe

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0x64

    invoke-direct {p0, v7, v8, v2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->pad(IILjava/lang/StringBuilder;)V

    .line 474
    const/16 v7, 0xf

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0x10

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v7, v8

    const v8, 0xea60

    div-int/2addr v7, v8

    .line 475
    .local v7, "tzmin":I
    if-nez v7, :cond_1

    .line 476
    const/16 v4, 0x5a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 478
    :cond_1
    if-gez v7, :cond_2

    .line 479
    neg-int v7, v7

    .line 480
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 482
    :cond_2
    const/16 v5, 0x2b

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    :goto_0
    div-int/lit8 v5, v7, 0x3c

    .line 485
    .local v5, "tzhour":I
    mul-int/lit8 v8, v5, 0x3c

    sub-int/2addr v7, v8

    .line 486
    invoke-direct {p0, v5, v4, v2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->pad(IILjava/lang/StringBuilder;)V

    .line 487
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    invoke-direct {p0, v7, v4, v2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->pad(IILjava/lang/StringBuilder;)V

    .line 490
    .end local v5    # "tzhour":I
    :goto_1
    monitor-enter p0

    .line 491
    :try_start_1
    iget-wide v4, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->lastTimestamp:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_3

    .line 492
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->lastTimestamp:J

    .line 493
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->timestamppStr:Ljava/lang/String;

    .line 495
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 495
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 455
    .end local v0    # "last":J
    .end local v2    # "buffer":Ljava/lang/StringBuilder;
    .end local v3    # "cal":Ljava/util/Calendar;
    .end local v7    # "tzmin":I
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private createFieldFormatters([Lorg/apache/logging/log4j/core/layout/LoggerFields;Lorg/apache/logging/log4j/core/config/Configuration;)Ljava/util/Map;
    .locals 13
    .param p1, "loggerFields"    # [Lorg/apache/logging/log4j/core/layout/LoggerFields;
    .param p2, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "loggerFields",
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/core/layout/LoggerFields;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$FieldFormatter;",
            ">;"
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, p1

    :goto_0
    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 204
    .local v0, "sdIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$FieldFormatter;>;"
    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 205
    array-length v3, p1

    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v4, p1, v1

    .line 206
    .local v4, "loggerField":Lorg/apache/logging/log4j/core/layout/LoggerFields;
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/layout/LoggerFields;->getSdId()Lorg/apache/logging/log4j/message/StructuredDataId;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcSdId:Lorg/apache/logging/log4j/message/StructuredDataId;

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/layout/LoggerFields;->getSdId()Lorg/apache/logging/log4j/message/StructuredDataId;

    move-result-object v5

    .line 207
    .local v5, "key":Lorg/apache/logging/log4j/message/StructuredDataId;
    :goto_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 208
    .local v6, "sdParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;>;"
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/layout/LoggerFields;->getMap()Ljava/util/Map;

    move-result-object v7

    .line 209
    .local v7, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 210
    invoke-static {p2, v2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->createPatternParser(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/Class;)Lorg/apache/logging/log4j/core/pattern/PatternParser;

    move-result-object v8

    .line 212
    .local v8, "fieldParser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 213
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v8, v11}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 214
    .local v11, "formatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v6, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "formatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    goto :goto_3

    .line 216
    :cond_2
    new-instance v9, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$FieldFormatter;

    .line 217
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/layout/LoggerFields;->getDiscardIfAllFieldsAreEmpty()Z

    move-result v10

    invoke-direct {v9, p0, v6, v10}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$FieldFormatter;-><init>(Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;Ljava/util/Map;Z)V

    .line 218
    .local v9, "fieldFormatter":Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$FieldFormatter;
    invoke-virtual {v5}, Lorg/apache/logging/log4j/message/StructuredDataId;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .end local v4    # "loggerField":Lorg/apache/logging/log4j/core/layout/LoggerFields;
    .end local v5    # "key":Lorg/apache/logging/log4j/message/StructuredDataId;
    .end local v6    # "sdParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;>;"
    .end local v7    # "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "fieldParser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    .end local v9    # "fieldFormatter":Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$FieldFormatter;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 222
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    move-object v2, v0

    :cond_5
    return-object v2
.end method

.method public static createLayout(Lorg/apache/logging/log4j/core/net/Facility;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Lorg/apache/logging/log4j/core/layout/LoggerFields;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;
    .locals 22
    .param p0, "facility"    # Lorg/apache/logging/log4j/core/net/Facility;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultString = "LOCAL0"
            value = "facility"
        .end annotation
    .end param
    .param p1, "id"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "id"
        .end annotation
    .end param
    .param p2, "enterpriseNumber"    # I
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultInt = 0x468c
            value = "enterpriseNumber"
        .end annotation
    .end param
    .param p3, "includeMDC"    # Z
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultBoolean = true
            value = "includeMDC"
        .end annotation
    .end param
    .param p4, "mdcId"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultString = "mdc"
            value = "mdcId"
        .end annotation
    .end param
    .param p5, "mdcPrefix"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "mdcPrefix"
        .end annotation
    .end param
    .param p6, "eventPrefix"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "eventPrefix"
        .end annotation
    .end param
    .param p7, "newLine"    # Z
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "newLine"
        .end annotation
    .end param
    .param p8, "escapeNL"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "newLineEscape"
        .end annotation
    .end param
    .param p9, "appName"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "appName"
        .end annotation
    .end param
    .param p10, "msgId"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "messageId"
        .end annotation
    .end param
    .param p11, "excludes"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "mdcExcludes"
        .end annotation
    .end param
    .param p12, "includes"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "mdcIncludes"
        .end annotation
    .end param
    .param p13, "required"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "mdcRequired"
        .end annotation
    .end param
    .param p14, "exceptionPattern"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "exceptionPattern"
        .end annotation
    .end param
    .param p15, "useTlsMessageFormat"    # Z
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "useTlsMessageFormat"
        .end annotation
    .end param
    .param p16, "loggerFields"    # [Lorg/apache/logging/log4j/core/layout/LoggerFields;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "LoggerFields"
        .end annotation
    .end param
    .param p17, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
        .end annotation
    .end param
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
            0x10,
            0x10,
            0x10,
            0x10,
            0x0,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "facility",
            "id",
            "enterpriseNumber",
            "includeMDC",
            "mdcId",
            "mdcPrefix",
            "eventPrefix",
            "newLine",
            "escapeNL",
            "appName",
            "msgId",
            "excludes",
            "includes",
            "required",
            "exceptionPattern",
            "useTlsMessageFormat",
            "loggerFields",
            "config"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 632
    if-eqz p12, :cond_0

    if-eqz p11, :cond_0

    .line 633
    sget-object v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "mdcIncludes and mdcExcludes are mutually exclusive. Includes wil be ignored"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 634
    const/4 v0, 0x0

    move-object/from16 v20, v0

    .end local p12    # "includes":Ljava/lang/String;
    .local v0, "includes":Ljava/lang/String;
    goto :goto_0

    .line 637
    .end local v0    # "includes":Ljava/lang/String;
    .restart local p12    # "includes":Ljava/lang/String;
    :cond_0
    move-object/from16 v20, p12

    .end local p12    # "includes":Ljava/lang/String;
    .local v20, "includes":Ljava/lang/String;
    :goto_0
    new-instance v21, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;

    move-object/from16 v0, v21

    sget-object v16, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v1, p17

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, v20

    move-object/from16 v15, p13

    move-object/from16 v17, p14

    move/from16 v18, p15

    move-object/from16 v19, p16

    invoke-direct/range {v0 .. v19}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/net/Facility;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z[Lorg/apache/logging/log4j/core/layout/LoggerFields;)V

    return-object v21
.end method

.method private static createPatternParser(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/Class;)Lorg/apache/logging/log4j/core/pattern/PatternParser;
    .locals 5
    .param p0, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "config",
            "filterClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/core/pattern/PatternConverter;",
            ">;)",
            "Lorg/apache/logging/log4j/core/pattern/PatternParser;"
        }
    .end annotation

    .line 234
    .local p1, "filterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/core/pattern/PatternConverter;>;"
    const-string v0, "Converter"

    if-nez p0, :cond_0

    .line 235
    new-instance v1, Lorg/apache/logging/log4j/core/pattern/PatternParser;

    const-class v2, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    invoke-direct {v1, p0, v0, v2, p1}, Lorg/apache/logging/log4j/core/pattern/PatternParser;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v1

    .line 237
    :cond_0
    const-string v1, "RFC5424-Converter"

    invoke-interface {p0, v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getComponent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/pattern/PatternParser;

    .line 238
    .local v2, "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    if-nez v2, :cond_1

    .line 239
    new-instance v3, Lorg/apache/logging/log4j/core/pattern/PatternParser;

    const-class v4, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;

    invoke-direct {v3, p0, v0, v4}, Lorg/apache/logging/log4j/core/pattern/PatternParser;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;Ljava/lang/Class;)V

    move-object v0, v3

    .line 240
    .end local v2    # "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    .local v0, "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    invoke-interface {p0, v1, v0}, Lorg/apache/logging/log4j/core/config/Configuration;->addComponent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    invoke-interface {p0, v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getComponent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/apache/logging/log4j/core/pattern/PatternParser;

    .line 243
    .end local v0    # "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    .restart local v2    # "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    :cond_1
    return-object v2
.end method

.method private escapeNewlines(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "text",
            "replacement"
        }
    .end annotation

    .line 430
    if-nez p2, :cond_0

    .line 431
    return-object p1

    .line 433
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private escapeSDParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 568
    sget-object v0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->PARAM_VALUE_ESCAPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "\\\\$0"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatStructuredElement(Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/layout/internal/ListChecker;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;
    .param p3, "sb"    # Ljava/lang/StringBuilder;
    .param p4, "checker"    # Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "data",
            "sb",
            "checker"
        }
    .end annotation

    .line 511
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->defaultId:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;->discard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 512
    :cond_1
    return-void

    .line 515
    :cond_2
    const/16 v0, 0x5b

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcSdId:Lorg/apache/logging/log4j/message/StructuredDataId;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/message/StructuredDataId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 518
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;->getFields()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lorg/apache/logging/log4j/core/layout/internal/ListChecker;->NOOP_CHECKER:Lorg/apache/logging/log4j/core/layout/internal/ListChecker$NoopChecker;

    invoke-direct {p0, v0, v1, p3, v2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->appendMap(Ljava/lang/String;Ljava/util/Map;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/layout/internal/ListChecker;)V

    goto :goto_0

    .line 520
    :cond_3
    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout$StructuredDataElement;->getFields()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3, p4}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->appendMap(Ljava/lang/String;Ljava/util/Map;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/layout/internal/ListChecker;)V

    .line 522
    :goto_0
    const/16 v0, 0x5d

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 523
    return-void
.end method

.method private getId(Lorg/apache/logging/log4j/message/StructuredDataId;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # Lorg/apache/logging/log4j/message/StructuredDataId;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/logging/log4j/message/StructuredDataId;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    invoke-virtual {p1}, Lorg/apache/logging/log4j/message/StructuredDataId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 528
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->defaultId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/logging/log4j/message/StructuredDataId;->getEnterpriseNumber()I

    move-result v1

    goto :goto_2

    :cond_2
    iget v1, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->enterpriseNumber:I

    .line 533
    .local v1, "ein":I
    :goto_2
    if-gez v1, :cond_3

    .line 534
    iget v1, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->enterpriseNumber:I

    .line 536
    :cond_3
    if-ltz v1, :cond_4

    .line 537
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private pad(IILjava/lang/StringBuilder;)V
    .locals 1
    .param p1, "val"    # I
    .param p2, "max"    # I
    .param p3, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "val",
            "max",
            "buf"
        }
    .end annotation

    .line 500
    :goto_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 501
    if-ge p1, p2, :cond_0

    .line 502
    const/16 v0, 0x30

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 504
    :cond_0
    div-int/lit8 p2, p2, 0xa

    goto :goto_0

    .line 506
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    return-void
.end method


# virtual methods
.method public getContentFormat()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "structured"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v1, "formatType"

    const-string v2, "RFC5424"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    return-object v0
.end method

.method public getFacility()Lorg/apache/logging/log4j/core/net/Facility;
    .locals 1

    .line 707
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->facility:Lorg/apache/logging/log4j/core/net/Facility;

    return-object v0
.end method

.method protected getMdcExcludes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcExcludes:Ljava/util/List;

    return-object v0
.end method

.method protected getMdcIncludes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->mdcIncludes:Ljava/util/List;

    return-object v0
.end method

.method protected getProcId()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->procId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/io/Serializable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "event"
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 271
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 272
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->appendPriority(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/Level;)V

    .line 273
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->appendTimestamp(Ljava/lang/StringBuilder;J)V

    .line 274
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->appendSpace(Ljava/lang/StringBuilder;)V

    .line 275
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->appendHostName(Ljava/lang/StringBuilder;)V

    .line 276
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->appendSpace(Ljava/lang/StringBuilder;)V

    .line 277
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->appendAppName(Ljava/lang/StringBuilder;)V

    .line 278
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->appendSpace(Ljava/lang/StringBuilder;)V

    .line 279
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->appendProcessId(Ljava/lang/StringBuilder;)V

    .line 280
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->appendSpace(Ljava/lang/StringBuilder;)V

    .line 281
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->appendMessageId(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/message/Message;)V

    .line 282
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->appendSpace(Ljava/lang/StringBuilder;)V

    .line 283
    invoke-direct {p0, v0, p1}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->appendStructuredElements(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 284
    invoke-direct {p0, v0, p1}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->appendMessage(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 285
    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->useTlsMessageFormat:Z

    if-eqz v1, :cond_0

    .line 286
    new-instance v1, Lorg/apache/logging/log4j/core/appender/TlsSyslogFrame;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/appender/TlsSyslogFrame;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/TlsSyslogFrame;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 288
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "facility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->facility:Lorg/apache/logging/log4j/core/net/Facility;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/net/Facility;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const-string v1, " appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const-string v1, " defaultId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->defaultId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    const-string v1, " enterpriseNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->enterpriseNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 578
    const-string v1, " newLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->includeNewLine:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 579
    const-string v1, " includeMDC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->includeMdc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 580
    const-string v1, " messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
