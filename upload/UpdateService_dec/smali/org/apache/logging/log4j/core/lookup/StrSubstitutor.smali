.class public Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
.super Ljava/lang/Object;
.source "StrSubstitutor.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/ConfigurationAware;


# static fields
.field private static final BUF_SIZE:I = 0x100

.field public static final DEFAULT_ESCAPE:C = '$'

.field public static final DEFAULT_PREFIX:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

.field public static final DEFAULT_SUFFIX:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

.field public static final DEFAULT_VALUE_DELIMITER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

.field public static final DEFAULT_VALUE_DELIMITER_STRING:Ljava/lang/String; = ":-"

.field public static final DEFAULT_VALUE_ESCAPE_DELIMITER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

.field public static final ESCAPE_DELIMITER_STRING:Ljava/lang/String; = ":\\-"


# instance fields
.field private configuration:Lorg/apache/logging/log4j/core/config/Configuration;

.field private enableSubstitutionInVariables:Z

.field private escapeChar:C

.field private prefixMatcher:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

.field private suffixMatcher:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

.field private valueDelimiterMatcher:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

.field private valueDelimiterString:Ljava/lang/String;

.field private valueEscapeDelimiterMatcher:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

.field private variableResolver:Lorg/apache/logging/log4j/core/lookup/StrLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    const-string v0, "${"

    invoke-static {v0}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    .line 158
    const-string v0, "}"

    invoke-static {v0}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    .line 164
    const-string v0, ":-"

    invoke-static {v0}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    .line 167
    const-string v0, ":\\-"

    invoke-static {v0}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->DEFAULT_VALUE_ESCAPE_DELIMITER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 218
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    sget-object v1, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    const/4 v2, 0x0

    const/16 v3, 0x24

    invoke-direct {p0, v2, v0, v1, v3}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;-><init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;Lorg/apache/logging/log4j/core/lookup/StrMatcher;Lorg/apache/logging/log4j/core/lookup/StrMatcher;C)V

    .line 219
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "valueMap"
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

    .line 228
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;-><init>(Ljava/util/Map;)V

    sget-object v1, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    sget-object v2, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;-><init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;Lorg/apache/logging/log4j/core/lookup/StrMatcher;Lorg/apache/logging/log4j/core/lookup/StrMatcher;C)V

    .line 229
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "valueMap",
            "prefix",
            "suffix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 240
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;-><init>(Ljava/util/Map;)V

    const/16 v1, 0x24

    invoke-direct {p0, v0, p2, p3, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;-><init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    .line 241
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "valueMap",
            "prefix",
            "suffix",
            "escape"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .line 254
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;-><init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    .line 255
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .locals 6
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C
    .param p5, "valueDelimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "valueMap",
            "prefix",
            "suffix",
            "escape",
            "valueDelimiter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 269
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;

    invoke-direct {v1, p1}, Lorg/apache/logging/log4j/core/lookup/PropertiesLookup;-><init>(Ljava/util/Map;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;-><init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V

    .line 270
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "properties"
        }
    .end annotation

    .line 279
    invoke-static {p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->toTypeSafeMap(Ljava/util/Properties;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;-><init>(Ljava/util/Map;)V

    .line 280
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;)V
    .locals 3
    .param p1, "variableResolver"    # Lorg/apache/logging/log4j/core/lookup/StrLookup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "variableResolver"
        }
    .end annotation

    .line 288
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    sget-object v1, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;-><init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;Lorg/apache/logging/log4j/core/lookup/StrMatcher;Lorg/apache/logging/log4j/core/lookup/StrMatcher;C)V

    .line 289
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1
    .param p1, "variableResolver"    # Lorg/apache/logging/log4j/core/lookup/StrLookup;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "variableResolver",
            "prefix",
            "suffix",
            "escape"
        }
    .end annotation

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->enableSubstitutionInVariables:Z

    .line 302
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariableResolver(Lorg/apache/logging/log4j/core/lookup/StrLookup;)V

    .line 303
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 304
    invoke-virtual {p0, p3}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 305
    invoke-virtual {p0, p4}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setEscapeChar(C)V

    .line 306
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .locals 1
    .param p1, "variableResolver"    # Lorg/apache/logging/log4j/core/lookup/StrLookup;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C
    .param p5, "valueDelimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "variableResolver",
            "prefix",
            "suffix",
            "escape",
            "valueDelimiter"
        }
    .end annotation

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->enableSubstitutionInVariables:Z

    .line 319
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariableResolver(Lorg/apache/logging/log4j/core/lookup/StrLookup;)V

    .line 320
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 321
    invoke-virtual {p0, p3}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 322
    invoke-virtual {p0, p4}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setEscapeChar(C)V

    .line 323
    invoke-virtual {p0, p5}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setValueDelimiter(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 324
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;Lorg/apache/logging/log4j/core/lookup/StrMatcher;Lorg/apache/logging/log4j/core/lookup/StrMatcher;C)V
    .locals 7
    .param p1, "variableResolver"    # Lorg/apache/logging/log4j/core/lookup/StrLookup;
    .param p2, "prefixMatcher"    # Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .param p3, "suffixMatcher"    # Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .param p4, "escape"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "variableResolver",
            "prefixMatcher",
            "suffixMatcher",
            "escape"
        }
    .end annotation

    .line 338
    sget-object v5, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    sget-object v6, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->DEFAULT_VALUE_ESCAPE_DELIMITER:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;-><init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;Lorg/apache/logging/log4j/core/lookup/StrMatcher;Lorg/apache/logging/log4j/core/lookup/StrMatcher;CLorg/apache/logging/log4j/core/lookup/StrMatcher;Lorg/apache/logging/log4j/core/lookup/StrMatcher;)V

    .line 340
    const-string v0, ":-"

    iput-object v0, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->valueDelimiterString:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;Lorg/apache/logging/log4j/core/lookup/StrMatcher;Lorg/apache/logging/log4j/core/lookup/StrMatcher;CLorg/apache/logging/log4j/core/lookup/StrMatcher;)V
    .locals 1
    .param p1, "variableResolver"    # Lorg/apache/logging/log4j/core/lookup/StrLookup;
    .param p2, "prefixMatcher"    # Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .param p3, "suffixMatcher"    # Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .param p4, "escape"    # C
    .param p5, "valueDelimiterMatcher"    # Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "variableResolver",
            "prefixMatcher",
            "suffixMatcher",
            "escape",
            "valueDelimiterMatcher"
        }
    .end annotation

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->enableSubstitutionInVariables:Z

    .line 355
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariableResolver(Lorg/apache/logging/log4j/core/lookup/StrLookup;)V

    .line 356
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/logging/log4j/core/lookup/StrMatcher;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 357
    invoke-virtual {p0, p3}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/logging/log4j/core/lookup/StrMatcher;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 358
    invoke-virtual {p0, p4}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setEscapeChar(C)V

    .line 359
    invoke-virtual {p0, p5}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/logging/log4j/core/lookup/StrMatcher;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 360
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/lookup/StrLookup;Lorg/apache/logging/log4j/core/lookup/StrMatcher;Lorg/apache/logging/log4j/core/lookup/StrMatcher;CLorg/apache/logging/log4j/core/lookup/StrMatcher;Lorg/apache/logging/log4j/core/lookup/StrMatcher;)V
    .locals 1
    .param p1, "variableResolver"    # Lorg/apache/logging/log4j/core/lookup/StrLookup;
    .param p2, "prefixMatcher"    # Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .param p3, "suffixMatcher"    # Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .param p4, "escape"    # C
    .param p5, "valueDelimiterMatcher"    # Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .param p6, "valueEscapeMatcher"    # Lorg/apache/logging/log4j/core/lookup/StrMatcher;
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
            "variableResolver",
            "prefixMatcher",
            "suffixMatcher",
            "escape",
            "valueDelimiterMatcher",
            "valueEscapeMatcher"
        }
    .end annotation

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->enableSubstitutionInVariables:Z

    .line 376
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariableResolver(Lorg/apache/logging/log4j/core/lookup/StrLookup;)V

    .line 377
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/logging/log4j/core/lookup/StrMatcher;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 378
    invoke-virtual {p0, p3}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/logging/log4j/core/lookup/StrMatcher;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 379
    invoke-virtual {p0, p4}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setEscapeChar(C)V

    .line 380
    invoke-virtual {p0, p5}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/logging/log4j/core/lookup/StrMatcher;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 381
    iput-object p6, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->valueEscapeDelimiterMatcher:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    .line 382
    return-void
.end method

.method constructor <init>(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)V
    .locals 1
    .param p1, "other"    # Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->enableSubstitutionInVariables:Z

    .line 385
    const-string v0, "other"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 386
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->getVariableResolver()Lorg/apache/logging/log4j/core/lookup/StrLookup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariableResolver(Lorg/apache/logging/log4j/core/lookup/StrLookup;)V

    .line 387
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->getVariablePrefixMatcher()Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/logging/log4j/core/lookup/StrMatcher;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 388
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->getVariableSuffixMatcher()Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/logging/log4j/core/lookup/StrMatcher;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 389
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->getEscapeChar()C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setEscapeChar(C)V

    .line 390
    iget-object v0, p1, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->valueDelimiterMatcher:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/logging/log4j/core/lookup/StrMatcher;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 391
    iget-object v0, p1, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->valueEscapeDelimiterMatcher:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->valueEscapeDelimiterMatcher:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    .line 392
    iget-object v0, p1, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 393
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->enableSubstitutionInVariables:Z

    .line 394
    iget-object v0, p1, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->valueDelimiterString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->valueDelimiterString:Ljava/lang/String;

    .line 395
    return-void
.end method

.method private getChars(Ljava/lang/StringBuilder;)[C
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sb"
        }
    .end annotation

    .line 1477
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 1478
    .local v0, "chars":[C
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v0, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 1479
    return-object v0
.end method

.method private static handleFailedReplacement(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "throwable"
        }
    .end annotation

    .line 458
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    const-string v1, "Replacement failed on {}"

    invoke-virtual {v0, v1, p0, p1}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 459
    return-object p0
.end method

.method private isCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p1, "varName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "varName",
            "priorVariables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1145
    .local p2, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1146
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    const/4 v0, 0x0

    return v0

    .line 1149
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1150
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "Infinite loop in property interpolation of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    const-string v1, "->"

    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->appendWithSeparators(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)V

    .line 1152
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->warn(Ljava/lang/CharSequence;)V

    .line 1153
    const/4 v1, 0x1

    return v1
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "source",
            "valueMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 407
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/Object;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "source",
            "valueMap",
            "prefix",
            "suffix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 424
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Properties;)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "valueProperties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "source",
            "valueProperties"
        }
    .end annotation

    .line 436
    if-nez p1, :cond_0

    .line 437
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 439
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 440
    .local v0, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 441
    .local v1, "propNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 443
    .local v2, "propName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, "propValue":Ljava/lang/String;
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .end local v2    # "propName":Ljava/lang/String;
    .end local v3    # "propValue":Ljava/lang/String;
    goto :goto_0

    .line 446
    :cond_1
    invoke-static {p0, v0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private substitute(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;IILjava/util/List;)I
    .locals 36
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "buf"    # Ljava/lang/StringBuilder;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "event",
            "buf",
            "offset",
            "length",
            "priorVariables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            "Ljava/lang/StringBuilder;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 992
    .local p5, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->getVariablePrefixMatcher()Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    move-result-object v9

    .line 993
    .local v9, "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->getVariableSuffixMatcher()Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    move-result-object v10

    .line 994
    .local v10, "suffixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->getEscapeChar()C

    move-result v11

    .line 995
    .local v11, "escape":C
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->getValueDelimiterMatcher()Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    move-result-object v12

    .line 996
    .local v12, "valueDelimiterMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v13

    .line 998
    .local v13, "substitutionInVariablesEnabled":Z
    if-nez p5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move/from16 v16, v0

    .line 999
    .local v16, "top":Z
    const/4 v0, 0x0

    .line 1000
    .local v0, "altered":Z
    const/4 v1, 0x0

    .line 1001
    .local v1, "lengthChange":I
    invoke-direct {v6, v7}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->getChars(Ljava/lang/StringBuilder;)[C

    move-result-object v2

    .line 1002
    .local v2, "chars":[C
    add-int v3, v8, p4

    .line 1003
    .local v3, "bufEnd":I
    move/from16 v4, p3

    move/from16 v17, v0

    move/from16 v18, v1

    move-object v5, v2

    move v1, v4

    move-object/from16 v0, p5

    move v4, v3

    .line 1004
    .end local v2    # "chars":[C
    .end local v3    # "bufEnd":I
    .end local p5    # "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "pos":I
    .local v4, "bufEnd":I
    .local v5, "chars":[C
    .local v17, "altered":Z
    .local v18, "lengthChange":I
    :goto_1
    if-ge v1, v4, :cond_19

    .line 1005
    invoke-virtual {v9, v5, v1, v8, v4}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->isMatch([CIII)I

    move-result v19

    .line 1006
    .local v19, "startMatchLen":I
    if-nez v19, :cond_1

    .line 1007
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v30, v9

    move-object/from16 v25, v10

    const/4 v3, 0x1

    const/4 v9, 0x0

    goto/16 :goto_12

    .line 1009
    :cond_1
    if-le v1, v8, :cond_2

    add-int/lit8 v2, v1, -0x1

    aget-char v2, v5, v2

    if-ne v2, v11, :cond_2

    .line 1011
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1012
    invoke-direct {v6, v7}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->getChars(Ljava/lang/StringBuilder;)[C

    move-result-object v2

    .line 1013
    .end local v5    # "chars":[C
    .restart local v2    # "chars":[C
    add-int/lit8 v18, v18, -0x1

    .line 1014
    const/4 v3, 0x1

    .line 1015
    .end local v17    # "altered":Z
    .local v3, "altered":Z
    add-int/lit8 v4, v4, -0x1

    move-object v5, v2

    move/from16 v17, v3

    move-object/from16 v30, v9

    move-object/from16 v25, v10

    const/4 v3, 0x1

    const/4 v9, 0x0

    goto/16 :goto_12

    .line 1018
    .end local v2    # "chars":[C
    .end local v3    # "altered":Z
    .restart local v5    # "chars":[C
    .restart local v17    # "altered":Z
    :cond_2
    move v3, v1

    .line 1019
    .local v3, "startPos":I
    add-int v1, v1, v19

    .line 1020
    const/4 v2, 0x0

    .line 1021
    .local v2, "endMatchLen":I
    const/16 v20, 0x0

    .line 1022
    .local v20, "nestedVarCount":I
    :goto_2
    if-ge v1, v4, :cond_18

    .line 1023
    if-eqz v13, :cond_3

    .line 1024
    invoke-virtual {v9, v5, v1, v8, v4}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->isMatch([CIII)I

    move-result v21

    move/from16 v2, v21

    if-eqz v21, :cond_3

    .line 1026
    add-int/lit8 v20, v20, 0x1

    .line 1027
    add-int/2addr v1, v2

    .line 1028
    goto :goto_2

    .line 1031
    :cond_3
    invoke-virtual {v10, v5, v1, v8, v4}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->isMatch([CIII)I

    move-result v21

    .line 1032
    .end local v2    # "endMatchLen":I
    .local v21, "endMatchLen":I
    if-nez v21, :cond_4

    .line 1033
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v21

    goto :goto_2

    .line 1036
    :cond_4
    if-nez v20, :cond_17

    .line 1037
    new-instance v2, Ljava/lang/String;

    add-int v15, v3, v19

    sub-int v23, v1, v3

    sub-int v14, v23, v19

    invoke-direct {v2, v5, v15, v14}, Ljava/lang/String;-><init>([CII)V

    move-object v14, v2

    .line 1038
    .local v14, "varNameExpr":Ljava/lang/String;
    if-eqz v13, :cond_6

    .line 1040
    if-nez v0, :cond_5

    .line 1041
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    move-object v15, v0

    goto :goto_3

    .line 1040
    :cond_5
    move-object v15, v0

    .line 1043
    .end local v0    # "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v15, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1044
    .local v2, "bufName":Ljava/lang/StringBuilder;
    const/16 v23, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v26, v1

    .end local v1    # "pos":I
    .local v26, "pos":I
    move-object/from16 v1, p1

    move/from16 p5, v3

    .end local v3    # "startPos":I
    .local p5, "startPos":I
    move/from16 v3, v23

    move/from16 v23, v4

    .end local v4    # "bufEnd":I
    .local v23, "bufEnd":I
    move/from16 v4, v25

    move-object/from16 v25, v10

    move-object v10, v5

    .end local v5    # "chars":[C
    .local v10, "chars":[C
    .local v25, "suffixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->substitute(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;IILjava/util/List;)I

    .line 1045
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v0, v15

    goto :goto_4

    .line 1038
    .end local v2    # "bufName":Ljava/lang/StringBuilder;
    .end local v15    # "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "bufEnd":I
    .end local v25    # "suffixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .end local v26    # "pos":I
    .end local p5    # "startPos":I
    .restart local v0    # "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "pos":I
    .restart local v3    # "startPos":I
    .restart local v4    # "bufEnd":I
    .restart local v5    # "chars":[C
    .local v10, "suffixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    :cond_6
    move/from16 v26, v1

    move/from16 p5, v3

    move/from16 v23, v4

    move-object/from16 v25, v10

    move-object v10, v5

    .line 1047
    .end local v1    # "pos":I
    .end local v3    # "startPos":I
    .end local v4    # "bufEnd":I
    .end local v5    # "chars":[C
    .local v10, "chars":[C
    .restart local v23    # "bufEnd":I
    .restart local v25    # "suffixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .restart local v26    # "pos":I
    .restart local p5    # "startPos":I
    :goto_4
    add-int v15, v26, v21

    .line 1048
    .end local v26    # "pos":I
    .local v15, "pos":I
    move v5, v15

    .line 1050
    .local v5, "endPos":I
    move-object v1, v14

    .line 1051
    .local v1, "varName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1053
    .local v2, "varDefaultValue":Ljava/lang/String;
    if-eqz v12, :cond_f

    .line 1054
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1055
    .local v3, "varNameExprChars":[C
    const/4 v4, 0x0

    .line 1056
    .local v4, "valueDelimiterMatchLen":I
    const/16 v26, 0x0

    move/from16 v35, v26

    move-object/from16 v26, v1

    move/from16 v1, v35

    .local v1, "i":I
    .local v26, "varName":Ljava/lang/String;
    :goto_5
    move-object/from16 v27, v2

    .end local v2    # "varDefaultValue":Ljava/lang/String;
    .local v27, "varDefaultValue":Ljava/lang/String;
    array-length v2, v3

    if-ge v1, v2, :cond_e

    .line 1058
    if-nez v13, :cond_7

    array-length v2, v3

    .line 1059
    invoke-virtual {v9, v3, v1, v1, v2}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->isMatch([CIII)I

    move-result v2

    if-eqz v2, :cond_7

    .line 1060
    move/from16 v29, v5

    move-object/from16 v30, v9

    const/4 v9, 0x0

    goto/16 :goto_9

    .line 1062
    :cond_7
    iget-object v2, v6, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->valueEscapeDelimiterMatcher:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    if-eqz v2, :cond_c

    .line 1063
    invoke-virtual {v2, v3, v1}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->isMatch([CI)I

    move-result v2

    .line 1064
    .local v2, "matchLen":I
    if-eqz v2, :cond_a

    .line 1065
    move/from16 v28, v4

    .end local v4    # "valueDelimiterMatchLen":I
    .local v28, "valueDelimiterMatchLen":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v29, v5

    move-object/from16 v30, v9

    const/4 v5, 0x0

    .end local v5    # "endPos":I
    .end local v9    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .local v29, "endPos":I
    .local v30, "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    invoke-virtual {v14, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1066
    .local v4, "varNamePrefix":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v9, v1, v2

    const/16 v22, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v14, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1067
    .end local v26    # "varName":Ljava/lang/String;
    .local v5, "varName":Ljava/lang/String;
    add-int v9, v1, v2

    .local v9, "j":I
    :goto_6
    move-object/from16 v26, v5

    .end local v5    # "varName":Ljava/lang/String;
    .restart local v26    # "varName":Ljava/lang/String;
    array-length v5, v3

    if-ge v9, v5, :cond_9

    .line 1068
    invoke-virtual {v12, v3, v9}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->isMatch([CI)I

    move-result v5

    move/from16 v28, v5

    if-eqz v5, :cond_8

    .line 1069
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v31, v4

    .end local v4    # "varNamePrefix":Ljava/lang/String;
    .local v31, "varNamePrefix":Ljava/lang/String;
    add-int v4, v1, v2

    invoke-virtual {v14, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1070
    .end local v26    # "varName":Ljava/lang/String;
    .local v4, "varName":Ljava/lang/String;
    add-int v5, v9, v28

    invoke-virtual {v14, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1071
    .end local v27    # "varDefaultValue":Ljava/lang/String;
    .local v5, "varDefaultValue":Ljava/lang/String;
    move-object/from16 v26, v4

    move-object/from16 v27, v5

    goto :goto_7

    .line 1067
    .end local v5    # "varDefaultValue":Ljava/lang/String;
    .end local v31    # "varNamePrefix":Ljava/lang/String;
    .local v4, "varNamePrefix":Ljava/lang/String;
    .restart local v26    # "varName":Ljava/lang/String;
    .restart local v27    # "varDefaultValue":Ljava/lang/String;
    :cond_8
    move-object/from16 v31, v4

    .end local v4    # "varNamePrefix":Ljava/lang/String;
    .restart local v31    # "varNamePrefix":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v26

    goto :goto_6

    .end local v31    # "varNamePrefix":Ljava/lang/String;
    .restart local v4    # "varNamePrefix":Ljava/lang/String;
    :cond_9
    move-object/from16 v31, v4

    .line 1074
    .end local v4    # "varNamePrefix":Ljava/lang/String;
    .end local v9    # "j":I
    .restart local v31    # "varNamePrefix":Ljava/lang/String;
    :goto_7
    move-object/from16 v5, v26

    const/4 v9, 0x0

    goto/16 :goto_a

    .line 1075
    .end local v28    # "valueDelimiterMatchLen":I
    .end local v29    # "endPos":I
    .end local v30    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .end local v31    # "varNamePrefix":Ljava/lang/String;
    .local v4, "valueDelimiterMatchLen":I
    .local v5, "endPos":I
    .local v9, "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    :cond_a
    move/from16 v28, v4

    move/from16 v29, v5

    move-object/from16 v30, v9

    .end local v4    # "valueDelimiterMatchLen":I
    .end local v5    # "endPos":I
    .end local v9    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .restart local v28    # "valueDelimiterMatchLen":I
    .restart local v29    # "endPos":I
    .restart local v30    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    invoke-virtual {v12, v3, v1}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->isMatch([CI)I

    move-result v4

    move v5, v4

    .end local v28    # "valueDelimiterMatchLen":I
    .local v5, "valueDelimiterMatchLen":I
    if-eqz v4, :cond_b

    .line 1076
    const/4 v4, 0x0

    invoke-virtual {v14, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1077
    .end local v26    # "varName":Ljava/lang/String;
    .local v9, "varName":Ljava/lang/String;
    add-int v4, v1, v5

    invoke-virtual {v14, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1078
    .end local v27    # "varDefaultValue":Ljava/lang/String;
    .local v4, "varDefaultValue":Ljava/lang/String;
    move-object/from16 v27, v4

    move-object v5, v9

    const/4 v9, 0x0

    goto :goto_a

    .line 1080
    .end local v2    # "matchLen":I
    .end local v4    # "varDefaultValue":Ljava/lang/String;
    .end local v9    # "varName":Ljava/lang/String;
    .restart local v26    # "varName":Ljava/lang/String;
    .restart local v27    # "varDefaultValue":Ljava/lang/String;
    :cond_b
    move v4, v5

    const/4 v9, 0x0

    goto :goto_8

    .end local v29    # "endPos":I
    .end local v30    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .local v4, "valueDelimiterMatchLen":I
    .local v5, "endPos":I
    .local v9, "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    :cond_c
    move/from16 v28, v4

    move/from16 v29, v5

    move-object/from16 v30, v9

    .end local v4    # "valueDelimiterMatchLen":I
    .end local v5    # "endPos":I
    .end local v9    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .restart local v28    # "valueDelimiterMatchLen":I
    .restart local v29    # "endPos":I
    .restart local v30    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    invoke-virtual {v12, v3, v1}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->isMatch([CI)I

    move-result v2

    move v4, v2

    .end local v28    # "valueDelimiterMatchLen":I
    .restart local v4    # "valueDelimiterMatchLen":I
    if-eqz v2, :cond_d

    .line 1081
    const/4 v9, 0x0

    invoke-virtual {v14, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1082
    .end local v26    # "varName":Ljava/lang/String;
    .local v2, "varName":Ljava/lang/String;
    add-int v5, v1, v4

    invoke-virtual {v14, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1083
    .end local v27    # "varDefaultValue":Ljava/lang/String;
    .local v5, "varDefaultValue":Ljava/lang/String;
    move-object/from16 v27, v5

    move-object v5, v2

    goto :goto_a

    .line 1080
    .end local v2    # "varName":Ljava/lang/String;
    .end local v5    # "varDefaultValue":Ljava/lang/String;
    .restart local v26    # "varName":Ljava/lang/String;
    .restart local v27    # "varDefaultValue":Ljava/lang/String;
    :cond_d
    const/4 v9, 0x0

    .line 1056
    :goto_8
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v27

    move/from16 v5, v29

    move-object/from16 v9, v30

    goto/16 :goto_5

    .end local v29    # "endPos":I
    .end local v30    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .local v5, "endPos":I
    .restart local v9    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    :cond_e
    move/from16 v28, v4

    move/from16 v29, v5

    move-object/from16 v30, v9

    const/4 v9, 0x0

    .end local v4    # "valueDelimiterMatchLen":I
    .end local v5    # "endPos":I
    .end local v9    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .restart local v28    # "valueDelimiterMatchLen":I
    .restart local v29    # "endPos":I
    .restart local v30    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    goto :goto_9

    .line 1053
    .end local v3    # "varNameExprChars":[C
    .end local v26    # "varName":Ljava/lang/String;
    .end local v27    # "varDefaultValue":Ljava/lang/String;
    .end local v28    # "valueDelimiterMatchLen":I
    .end local v29    # "endPos":I
    .end local v30    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .local v1, "varName":Ljava/lang/String;
    .local v2, "varDefaultValue":Ljava/lang/String;
    .restart local v5    # "endPos":I
    .restart local v9    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    :cond_f
    move-object/from16 v26, v1

    move-object/from16 v27, v2

    move/from16 v29, v5

    move-object/from16 v30, v9

    const/4 v9, 0x0

    .line 1089
    .end local v1    # "varName":Ljava/lang/String;
    .end local v2    # "varDefaultValue":Ljava/lang/String;
    .end local v5    # "endPos":I
    .end local v9    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .restart local v26    # "varName":Ljava/lang/String;
    .restart local v27    # "varDefaultValue":Ljava/lang/String;
    .restart local v29    # "endPos":I
    .restart local v30    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    :goto_9
    move-object/from16 v5, v26

    .end local v26    # "varName":Ljava/lang/String;
    .local v5, "varName":Ljava/lang/String;
    :goto_a
    if-nez v0, :cond_10

    .line 1090
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1091
    new-instance v1, Ljava/lang/String;

    add-int v2, p4, v18

    invoke-direct {v1, v10, v8, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v0

    goto :goto_b

    .line 1089
    :cond_10
    move-object v4, v0

    .line 1095
    .end local v0    # "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_b
    invoke-direct {v6, v5, v4}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->isCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)Z

    move-result v24

    .line 1098
    .local v24, "isCyclic":Z
    const/16 v26, 0x0

    if-eqz v24, :cond_11

    move-object/from16 v28, v4

    move-object/from16 v0, v26

    move/from16 v31, v29

    move-object/from16 v29, v5

    goto :goto_c

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v3, p2

    move-object/from16 v28, v4

    .end local v4    # "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v28, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v4, p5

    move/from16 v31, v29

    move-object/from16 v29, v5

    .end local v5    # "varName":Ljava/lang/String;
    .local v29, "varName":Ljava/lang/String;
    .local v31, "endPos":I
    move/from16 v5, v31

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->resolveVariable(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;Ljava/lang/StringBuilder;II)Lorg/apache/logging/log4j/core/lookup/LookupResult;

    move-result-object v0

    :goto_c
    move-object/from16 v32, v0

    .line 1099
    .local v32, "resolvedResult":Lorg/apache/logging/log4j/core/lookup/LookupResult;
    if-nez v32, :cond_12

    goto :goto_d

    :cond_12
    invoke-interface/range {v32 .. v32}, Lorg/apache/logging/log4j/core/lookup/LookupResult;->value()Ljava/lang/String;

    move-result-object v26

    :goto_d
    move-object/from16 v0, v26

    .line 1100
    .local v0, "varValue":Ljava/lang/String;
    if-nez v0, :cond_13

    .line 1101
    move-object/from16 v0, v27

    move-object v5, v0

    goto :goto_e

    .line 1100
    :cond_13
    move-object v5, v0

    .line 1103
    .end local v0    # "varValue":Ljava/lang/String;
    .local v5, "varValue":Ljava/lang/String;
    :goto_e
    if-eqz v5, :cond_15

    .line 1105
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v26

    .line 1106
    .local v26, "varLen":I
    move/from16 v4, p5

    move/from16 v3, v31

    .end local v31    # "endPos":I
    .end local p5    # "startPos":I
    .local v3, "endPos":I
    .local v4, "startPos":I
    invoke-virtual {v7, v4, v3, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    const/16 v17, 0x1

    .line 1108
    if-eqz v32, :cond_14

    invoke-interface/range {v32 .. v32}, Lorg/apache/logging/log4j/core/lookup/LookupResult;->isLookupEvaluationAllowedInValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1109
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v31, v3

    .end local v3    # "endPos":I
    .restart local v31    # "endPos":I
    move v3, v4

    move/from16 v33, v4

    .end local v4    # "startPos":I
    .local v33, "startPos":I
    move/from16 v4, v26

    move-object/from16 v34, v5

    .end local v5    # "varValue":Ljava/lang/String;
    .local v34, "varValue":Ljava/lang/String;
    move-object/from16 v5, v28

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->substitute(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;IILjava/util/List;)I

    move-result v5

    goto :goto_f

    .line 1108
    .end local v31    # "endPos":I
    .end local v33    # "startPos":I
    .end local v34    # "varValue":Ljava/lang/String;
    .restart local v3    # "endPos":I
    .restart local v4    # "startPos":I
    .restart local v5    # "varValue":Ljava/lang/String;
    :cond_14
    move/from16 v31, v3

    move/from16 v33, v4

    move-object/from16 v34, v5

    .line 1109
    .end local v3    # "endPos":I
    .end local v4    # "startPos":I
    .end local v5    # "varValue":Ljava/lang/String;
    .restart local v31    # "endPos":I
    .restart local v33    # "startPos":I
    .restart local v34    # "varValue":Ljava/lang/String;
    move v5, v9

    :goto_f
    move v0, v5

    .line 1111
    .local v0, "change":I
    sub-int v5, v31, v33

    sub-int v1, v26, v5

    add-int/2addr v0, v1

    .line 1112
    add-int/2addr v15, v0

    .line 1113
    add-int v4, v23, v0

    .line 1114
    .end local v23    # "bufEnd":I
    .local v4, "bufEnd":I
    add-int v18, v18, v0

    .line 1115
    invoke-direct {v6, v7}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->getChars(Ljava/lang/StringBuilder;)[C

    move-result-object v5

    .end local v10    # "chars":[C
    .local v5, "chars":[C
    goto :goto_10

    .line 1103
    .end local v0    # "change":I
    .end local v4    # "bufEnd":I
    .end local v26    # "varLen":I
    .end local v33    # "startPos":I
    .end local v34    # "varValue":Ljava/lang/String;
    .local v5, "varValue":Ljava/lang/String;
    .restart local v10    # "chars":[C
    .restart local v23    # "bufEnd":I
    .restart local p5    # "startPos":I
    :cond_15
    move/from16 v33, p5

    move-object/from16 v34, v5

    .end local v5    # "varValue":Ljava/lang/String;
    .end local p5    # "startPos":I
    .restart local v33    # "startPos":I
    .restart local v34    # "varValue":Ljava/lang/String;
    move-object v5, v10

    move/from16 v4, v23

    .line 1119
    .end local v10    # "chars":[C
    .end local v23    # "bufEnd":I
    .restart local v4    # "bufEnd":I
    .local v5, "chars":[C
    :goto_10
    if-nez v24, :cond_16

    .line 1120
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    move-object/from16 v1, v28

    .end local v28    # "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_11

    .line 1119
    .end local v1    # "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_16
    move-object/from16 v1, v28

    const/4 v3, 0x1

    .line 1129
    .end local v14    # "varNameExpr":Ljava/lang/String;
    .end local v19    # "startMatchLen":I
    .end local v20    # "nestedVarCount":I
    .end local v21    # "endMatchLen":I
    .end local v24    # "isCyclic":Z
    .end local v27    # "varDefaultValue":Ljava/lang/String;
    .end local v28    # "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "varName":Ljava/lang/String;
    .end local v31    # "endPos":I
    .end local v32    # "resolvedResult":Lorg/apache/logging/log4j/core/lookup/LookupResult;
    .end local v33    # "startPos":I
    .end local v34    # "varValue":Ljava/lang/String;
    .restart local v1    # "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_11
    move-object v0, v1

    move v1, v15

    goto :goto_12

    .line 1124
    .end local v15    # "pos":I
    .end local v25    # "suffixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .end local v30    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .local v0, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "pos":I
    .local v3, "startPos":I
    .restart local v9    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .local v10, "suffixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .restart local v19    # "startMatchLen":I
    .restart local v20    # "nestedVarCount":I
    .restart local v21    # "endMatchLen":I
    :cond_17
    move/from16 v26, v1

    move/from16 v33, v3

    move/from16 v23, v4

    move-object/from16 v30, v9

    move-object/from16 v25, v10

    const/4 v3, 0x1

    const/4 v9, 0x0

    move-object v10, v5

    .end local v1    # "pos":I
    .end local v3    # "startPos":I
    .end local v4    # "bufEnd":I
    .end local v5    # "chars":[C
    .end local v9    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .local v10, "chars":[C
    .restart local v23    # "bufEnd":I
    .restart local v25    # "suffixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .local v26, "pos":I
    .restart local v30    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .restart local v33    # "startPos":I
    add-int/lit8 v20, v20, -0x1

    .line 1125
    add-int v1, v26, v21

    move/from16 v2, v21

    move-object/from16 v10, v25

    move-object/from16 v9, v30

    move/from16 v3, v33

    .end local v26    # "pos":I
    .restart local v1    # "pos":I
    goto/16 :goto_2

    .line 1022
    .end local v21    # "endMatchLen":I
    .end local v23    # "bufEnd":I
    .end local v25    # "suffixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .end local v30    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .end local v33    # "startPos":I
    .local v2, "endMatchLen":I
    .restart local v3    # "startPos":I
    .restart local v4    # "bufEnd":I
    .restart local v5    # "chars":[C
    .restart local v9    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .local v10, "suffixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    :cond_18
    move/from16 v26, v1

    move/from16 v33, v3

    move/from16 v23, v4

    move-object/from16 v30, v9

    move-object/from16 v25, v10

    const/4 v3, 0x1

    const/4 v9, 0x0

    move-object v10, v5

    .line 1129
    .end local v2    # "endMatchLen":I
    .end local v3    # "startPos":I
    .end local v9    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .end local v10    # "suffixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .end local v19    # "startMatchLen":I
    .end local v20    # "nestedVarCount":I
    .restart local v25    # "suffixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .restart local v30    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    :goto_12
    move-object/from16 v10, v25

    move-object/from16 v9, v30

    goto/16 :goto_1

    .line 1130
    .end local v25    # "suffixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .end local v30    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .restart local v9    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .restart local v10    # "suffixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    :cond_19
    move/from16 v23, v4

    move-object/from16 v30, v9

    move-object/from16 v25, v10

    move-object v10, v5

    .end local v4    # "bufEnd":I
    .end local v5    # "chars":[C
    .end local v9    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .local v10, "chars":[C
    .restart local v23    # "bufEnd":I
    .restart local v25    # "suffixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .restart local v30    # "prefixMatcher":Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    if-eqz v16, :cond_1a

    .line 1131
    return v17

    .line 1133
    :cond_1a
    return v18
.end method

.method private static toTypeSafeMap(Ljava/util/Properties;)Ljava/util/Map;
    .locals 4
    .param p0, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 450
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/Properties;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 451
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 452
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 454
    :cond_0
    return-object v0
.end method


# virtual methods
.method public appendWithSeparators(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "sb",
            "iterable",
            "separator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1492
    .local p2, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-eqz p2, :cond_2

    .line 1493
    if-nez p3, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    move-object p3, v0

    .line 1494
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1495
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1496
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1497
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1498
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1502
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    return-void
.end method

.method public getEscapeChar()C
    .locals 1

    .line 1198
    iget-char v0, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->escapeChar:C

    return v0
.end method

.method public getValueDelimiterMatcher()Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .locals 1

    .line 1366
    iget-object v0, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->valueDelimiterMatcher:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    return-object v0
.end method

.method public getVariablePrefixMatcher()Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .locals 1

    .line 1225
    iget-object v0, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->prefixMatcher:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    return-object v0
.end method

.method public getVariableResolver()Lorg/apache/logging/log4j/core/lookup/StrLookup;
    .locals 1

    .line 1438
    iget-object v0, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->variableResolver:Lorg/apache/logging/log4j/core/lookup/StrLookup;

    return-object v0
.end method

.method public getVariableSuffixMatcher()Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .locals 1

    .line 1294
    iget-object v0, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->suffixMatcher:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    return-object v0
.end method

.method public isEnableSubstitutionInVariables()Z
    .locals 1

    .line 1461
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->enableSubstitutionInVariables:Z

    return v0
.end method

.method public replace(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    .line 798
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    .line 471
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "source",
            "offset",
            "length"
        }
    .end annotation

    .line 511
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    .line 635
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "source",
            "offset",
            "length"
        }
    .end annotation

    .line 676
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuffer;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    .line 717
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Ljava/lang/StringBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "source",
            "offset",
            "length"
        }
    .end annotation

    .line 757
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "source"
        }
    .end annotation

    .line 811
    if-nez p2, :cond_0

    .line 812
    const/4 v0, 0x0

    return-object v0

    .line 814
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "stringValue":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 817
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p0, p1, v1, v2, v3}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->substitute(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    nop

    .line 821
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 818
    :catchall_0
    move-exception v2

    .line 819
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->handleFailedReplacement(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "source"
        }
    .end annotation

    .line 483
    if-nez p2, :cond_0

    .line 484
    const/4 v0, 0x0

    return-object v0

    .line 486
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 488
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->substitute(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 489
    return-object p2

    .line 493
    :cond_1
    nop

    .line 494
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 491
    :catchall_0
    move-exception v1

    .line 492
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {p2, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->handleFailedReplacement(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "event",
            "source",
            "offset",
            "length"
        }
    .end annotation

    .line 529
    if-nez p2, :cond_0

    .line 530
    const/4 v0, 0x0

    return-object v0

    .line 532
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2, p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, p4}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->substitute(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 535
    add-int v1, p3, p4

    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 539
    :cond_1
    nop

    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 537
    :catchall_0
    move-exception v1

    .line 538
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {p2, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->handleFailedReplacement(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "source"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "source"
        }
    .end annotation

    .line 649
    if-nez p2, :cond_0

    .line 650
    const/4 v0, 0x0

    return-object v0

    .line 652
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 654
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->substitute(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    nop

    .line 658
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 655
    :catchall_0
    move-exception v1

    .line 656
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->handleFailedReplacement(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "source"    # Ljava/lang/StringBuffer;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "event",
            "source",
            "offset",
            "length"
        }
    .end annotation

    .line 695
    if-nez p2, :cond_0

    .line 696
    const/4 v0, 0x0

    return-object v0

    .line 698
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2, p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 700
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, p4}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->substitute(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    nop

    .line 704
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 701
    :catchall_0
    move-exception v1

    .line 702
    .local v1, "t":Ljava/lang/Throwable;
    add-int v2, p3, p4

    invoke-virtual {p2, p3, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->handleFailedReplacement(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "source"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "source"
        }
    .end annotation

    .line 731
    if-nez p2, :cond_0

    .line 732
    const/4 v0, 0x0

    return-object v0

    .line 734
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 736
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->substitute(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    nop

    .line 740
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 737
    :catchall_0
    move-exception v1

    .line 738
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->handleFailedReplacement(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "source"    # Ljava/lang/StringBuilder;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "event",
            "source",
            "offset",
            "length"
        }
    .end annotation

    .line 776
    if-nez p2, :cond_0

    .line 777
    const/4 v0, 0x0

    return-object v0

    .line 779
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2, p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 781
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, p4}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->substitute(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    nop

    .line 785
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 782
    :catchall_0
    move-exception v1

    .line 783
    .local v1, "t":Ljava/lang/Throwable;
    add-int v2, p3, p4

    invoke-virtual {p2, p3, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->handleFailedReplacement(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public replace(Lorg/apache/logging/log4j/core/LogEvent;[C)Ljava/lang/String;
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "source"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "source"
        }
    .end annotation

    .line 567
    if-nez p2, :cond_0

    .line 568
    const/4 v0, 0x0

    return-object v0

    .line 570
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 572
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->substitute(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    nop

    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 573
    :catchall_0
    move-exception v1

    .line 574
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v2, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->handleFailedReplacement(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public replace(Lorg/apache/logging/log4j/core/LogEvent;[CII)Ljava/lang/String;
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "source"    # [C
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "event",
            "source",
            "offset",
            "length"
        }
    .end annotation

    .line 613
    if-nez p2, :cond_0

    .line 614
    const/4 v0, 0x0

    return-object v0

    .line 616
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2, p3, p4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 618
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, p4}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->substitute(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    nop

    .line 622
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 619
    :catchall_0
    move-exception v1

    .line 620
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2, p3, p4}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v2, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->handleFailedReplacement(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public replace([C)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    .line 553
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Lorg/apache/logging/log4j/core/LogEvent;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replace([CII)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "source",
            "offset",
            "length"
        }
    .end annotation

    .line 594
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Lorg/apache/logging/log4j/core/LogEvent;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    .line 834
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 835
    return v0

    .line 837
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replaceIn(Ljava/lang/StringBuffer;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;II)Z
    .locals 1
    .param p1, "source"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "source",
            "offset",
            "length"
        }
    .end annotation

    .line 855
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replaceIn(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuffer;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Ljava/lang/StringBuilder;)Z
    .locals 1
    .param p1, "source"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    .line 899
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replaceIn(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Ljava/lang/StringBuilder;II)Z
    .locals 1
    .param p1, "source"    # Ljava/lang/StringBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "source",
            "offset",
            "length"
        }
    .end annotation

    .line 931
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replaceIn(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuffer;II)Z
    .locals 5
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "source"    # Ljava/lang/StringBuffer;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "event",
            "source",
            "offset",
            "length"
        }
    .end annotation

    .line 874
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 875
    return v0

    .line 877
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p2, p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 879
    .local v1, "buf":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0, p1, v1, v0, p4}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->substitute(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;II)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 880
    return v0

    .line 885
    :cond_1
    nop

    .line 886
    add-int v0, p3, p4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p3, v0, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 887
    const/4 v0, 0x1

    return v0

    .line 882
    :catchall_0
    move-exception v2

    .line 883
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v3

    const-string v4, "Replacement failed on {}"

    invoke-virtual {v3, v4, p2, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 884
    return v0
.end method

.method public replaceIn(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Z
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "source"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "source"
        }
    .end annotation

    .line 912
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 913
    return v0

    .line 915
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->substitute(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;II)Z
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "source"    # Ljava/lang/StringBuilder;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "event",
            "source",
            "offset",
            "length"
        }
    .end annotation

    .line 949
    if-nez p2, :cond_0

    .line 950
    const/4 v0, 0x0

    return v0

    .line 952
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->substitute(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;II)Z

    move-result v0

    return v0
.end method

.method protected resolveVariable(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;Ljava/lang/StringBuilder;II)Lorg/apache/logging/log4j/core/lookup/LookupResult;
    .locals 5
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "variableName"    # Ljava/lang/String;
    .param p3, "buf"    # Ljava/lang/StringBuilder;
    .param p4, "startPos"    # I
    .param p5, "endPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "event",
            "variableName",
            "buf",
            "startPos",
            "endPos"
        }
    .end annotation

    .line 1178
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->getVariableResolver()Lorg/apache/logging/log4j/core/lookup/StrLookup;

    move-result-object v0

    .line 1179
    .local v0, "resolver":Lorg/apache/logging/log4j/core/lookup/StrLookup;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1180
    return-object v1

    .line 1183
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/core/lookup/StrLookup;->evaluate(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/LookupResult;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1184
    :catchall_0
    move-exception v2

    .line 1185
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v3

    const-string v4, "Resolver failed to lookup {}"

    invoke-virtual {v3, v4, p2, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1186
    return-object v1
.end method

.method public setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 2
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 1511
    iput-object p1, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 1512
    iget-object v0, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->variableResolver:Lorg/apache/logging/log4j/core/lookup/StrLookup;

    instance-of v1, v0, Lorg/apache/logging/log4j/core/config/ConfigurationAware;

    if-eqz v1, :cond_0

    .line 1513
    check-cast v0, Lorg/apache/logging/log4j/core/config/ConfigurationAware;

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/core/config/ConfigurationAware;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 1515
    :cond_0
    return-void
.end method

.method public setEnableSubstitutionInVariables(Z)V
    .locals 0
    .param p1, "enableSubstitutionInVariables"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "enableSubstitutionInVariables"
        }
    .end annotation

    .line 1473
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->enableSubstitutionInVariables:Z

    .line 1474
    return-void
.end method

.method public setEscapeChar(C)V
    .locals 0
    .param p1, "escapeCharacter"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "escapeCharacter"
        }
    .end annotation

    .line 1209
    iput-char p1, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->escapeChar:C

    .line 1210
    return-void
.end method

.method public setValueDelimiter(C)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .locals 1
    .param p1, "valueDelimiter"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "valueDelimiter"
        }
    .end annotation

    .line 1401
    invoke-static {p1}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->charMatcher(C)Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/logging/log4j/core/lookup/StrMatcher;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setValueDelimiter(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .locals 3
    .param p1, "valueDelimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "valueDelimiter"
        }
    .end annotation

    .line 1420
    invoke-static {p1}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/logging/log4j/core/lookup/StrMatcher;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 1422
    return-object p0

    .line 1424
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1426
    .local v0, "escapeValue":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->valueEscapeDelimiterMatcher:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    .line 1427
    invoke-static {p1}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/logging/log4j/core/lookup/StrMatcher;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v1

    return-object v1
.end method

.method public setValueDelimiterMatcher(Lorg/apache/logging/log4j/core/lookup/StrMatcher;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .locals 0
    .param p1, "valueDelimiterMatcher"    # Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "valueDelimiterMatcher"
        }
    .end annotation

    .line 1385
    iput-object p1, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->valueDelimiterMatcher:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    .line 1386
    return-object p0
.end method

.method public setVariablePrefix(C)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .locals 1
    .param p1, "prefix"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "prefix"
        }
    .end annotation

    .line 1260
    invoke-static {p1}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->charMatcher(C)Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/logging/log4j/core/lookup/StrMatcher;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariablePrefix(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "prefix"
        }
    .end annotation

    .line 1275
    if-eqz p1, :cond_0

    .line 1278
    invoke-static {p1}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/logging/log4j/core/lookup/StrMatcher;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v0

    return-object v0

    .line 1276
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable prefix must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariablePrefixMatcher(Lorg/apache/logging/log4j/core/lookup/StrMatcher;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .locals 2
    .param p1, "prefixMatcher"    # Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "prefixMatcher"
        }
    .end annotation

    .line 1241
    if-eqz p1, :cond_0

    .line 1244
    iput-object p1, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->prefixMatcher:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    .line 1245
    return-object p0

    .line 1242
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable prefix matcher must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariableResolver(Lorg/apache/logging/log4j/core/lookup/StrLookup;)V
    .locals 2
    .param p1, "variableResolver"    # Lorg/apache/logging/log4j/core/lookup/StrLookup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "variableResolver"
        }
    .end annotation

    .line 1447
    instance-of v0, p1, Lorg/apache/logging/log4j/core/config/ConfigurationAware;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    if-eqz v0, :cond_0

    .line 1448
    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/core/config/ConfigurationAware;

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/core/config/ConfigurationAware;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 1450
    :cond_0
    iput-object p1, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->variableResolver:Lorg/apache/logging/log4j/core/lookup/StrLookup;

    .line 1451
    return-void
.end method

.method public setVariableSuffix(C)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .locals 1
    .param p1, "suffix"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "suffix"
        }
    .end annotation

    .line 1329
    invoke-static {p1}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->charMatcher(C)Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/logging/log4j/core/lookup/StrMatcher;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariableSuffix(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .locals 2
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "suffix"
        }
    .end annotation

    .line 1344
    if-eqz p1, :cond_0

    .line 1347
    invoke-static {p1}, Lorg/apache/logging/log4j/core/lookup/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/logging/log4j/core/lookup/StrMatcher;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v0

    return-object v0

    .line 1345
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable suffix must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariableSuffixMatcher(Lorg/apache/logging/log4j/core/lookup/StrMatcher;)Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .locals 2
    .param p1, "suffixMatcher"    # Lorg/apache/logging/log4j/core/lookup/StrMatcher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "suffixMatcher"
        }
    .end annotation

    .line 1310
    if-eqz p1, :cond_0

    .line 1313
    iput-object p1, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->suffixMatcher:Lorg/apache/logging/log4j/core/lookup/StrMatcher;

    .line 1314
    return-object p0

    .line 1311
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable suffix matcher must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected substitute(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;II)Z
    .locals 6
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "buf"    # Ljava/lang/StringBuilder;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "event",
            "buf",
            "offset",
            "length"
        }
    .end annotation

    .line 974
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->substitute(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;IILjava/util/List;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrSubstitutor("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->variableResolver:Lorg/apache/logging/log4j/core/lookup/StrLookup;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
