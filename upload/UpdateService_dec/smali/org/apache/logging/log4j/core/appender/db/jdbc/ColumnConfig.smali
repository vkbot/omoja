.class public final Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;
.super Ljava/lang/Object;
.source "ColumnConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "Column"
    printObject = true
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final clob:Z

.field private final columnName:Ljava/lang/String;

.field private final columnNameKey:Ljava/lang/String;

.field private final eventTimestamp:Z

.field private final layout:Lorg/apache/logging/log4j/core/layout/PatternLayout;

.field private final literalValue:Ljava/lang/String;

.field private final unicode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 175
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/PatternLayout;Ljava/lang/String;ZZZ)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "layout"    # Lorg/apache/logging/log4j/core/layout/PatternLayout;
    .param p3, "literalValue"    # Ljava/lang/String;
    .param p4, "eventDate"    # Z
    .param p5, "unicode"    # Z
    .param p6, "clob"    # Z
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
            "columnName",
            "layout",
            "literalValue",
            "eventDate",
            "unicode",
            "clob"
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->columnName:Ljava/lang/String;

    .line 223
    invoke-static {p1}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->columnNameKey:Ljava/lang/String;

    .line 224
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->layout:Lorg/apache/logging/log4j/core/layout/PatternLayout;

    .line 225
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->literalValue:Ljava/lang/String;

    .line 226
    iput-boolean p4, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->eventTimestamp:Z

    .line 227
    iput-boolean p5, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->unicode:Z

    .line 228
    iput-boolean p6, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->clob:Z

    .line 229
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/PatternLayout;Ljava/lang/String;ZZZLorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/layout/PatternLayout;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .param p6, "x5"    # Z
    .param p7, "x6"    # Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$1;

    .line 39
    invoke-direct/range {p0 .. p6}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/PatternLayout;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 39
    sget-object v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method public static createColumnConfig(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;
    .locals 4
    .param p0, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "literalValue"    # Ljava/lang/String;
    .param p4, "eventTimestamp"    # Ljava/lang/String;
    .param p5, "unicode"    # Ljava/lang/String;
    .param p6, "clob"    # Ljava/lang/String;
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
            "config",
            "name",
            "pattern",
            "literalValue",
            "eventTimestamp",
            "unicode",
            "clob"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    invoke-static {p1}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "The column config is not valid because it does not contain a column name."

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    return-object v0

    .line 191
    :cond_0
    invoke-static {p4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 192
    .local v0, "isEventTimestamp":Z
    const/4 v1, 0x1

    invoke-static {p5, v1}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 193
    .local v1, "isUnicode":Z
    invoke-static {p6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 195
    .local v2, "isClob":Z
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->newBuilder()Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;

    move-result-object v3

    .line 196
    invoke-virtual {v3, p0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;

    move-result-object v3

    .line 197
    invoke-virtual {v3, p1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->setName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;

    move-result-object v3

    .line 198
    invoke-virtual {v3, p2}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->setPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;

    move-result-object v3

    .line 199
    invoke-virtual {v3, p3}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->setLiteral(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;

    move-result-object v3

    .line 200
    invoke-virtual {v3, v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->setEventTimestamp(Z)Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;

    move-result-object v3

    .line 201
    invoke-virtual {v3, v1}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->setUnicode(Z)Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;

    move-result-object v3

    .line 202
    invoke-virtual {v3, v2}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->setClob(Z)Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;

    move-result-object v3

    .line 203
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;->build()Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;

    move-result-object v3

    .line 195
    return-object v3
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 207
    new-instance v0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getColumnName()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnNameKey()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->columnNameKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLayout()Lorg/apache/logging/log4j/core/layout/PatternLayout;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->layout:Lorg/apache/logging/log4j/core/layout/PatternLayout;

    return-object v0
.end method

.method public getLiteralValue()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->literalValue:Ljava/lang/String;

    return-object v0
.end method

.method public isClob()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->clob:Z

    return v0
.end method

.method public isEventTimestamp()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->eventTimestamp:Z

    return v0
.end method

.method public isUnicode()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->unicode:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", layout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->layout:Lorg/apache/logging/log4j/core/layout/PatternLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", literal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->literalValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/db/jdbc/ColumnConfig;->eventTimestamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
