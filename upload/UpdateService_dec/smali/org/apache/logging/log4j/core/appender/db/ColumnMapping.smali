.class public Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;
.super Ljava/lang/Object;
.source "ColumnMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "ColumnMapping"
    printObject = true
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final layout:Lorg/apache/logging/log4j/core/StringLayout;

.field private final literalValue:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final nameKey:Ljava/lang/String;

.field private final parameter:Ljava/lang/String;

.field private final source:Ljava/lang/String;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

    sput-object v0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;

    .line 196
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/StringLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "layout"    # Lorg/apache/logging/log4j/core/StringLayout;
    .param p4, "literalValue"    # Ljava/lang/String;
    .param p5, "parameter"    # Ljava/lang/String;
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
            "name",
            "source",
            "layout",
            "literalValue",
            "parameter",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/StringLayout;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 215
    .local p6, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->name:Ljava/lang/String;

    .line 217
    invoke-static {p1}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->nameKey:Ljava/lang/String;

    .line 218
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->source:Ljava/lang/String;

    .line 219
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->layout:Lorg/apache/logging/log4j/core/StringLayout;

    .line 220
    iput-object p4, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->literalValue:Ljava/lang/String;

    .line 221
    iput-object p5, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->parameter:Ljava/lang/String;

    .line 222
    iput-object p6, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->type:Ljava/lang/Class;

    .line 223
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/StringLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/StringLayout;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/Class;
    .param p7, "x6"    # Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$1;

    .line 44
    invoke-direct/range {p0 .. p6}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/StringLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 44
    sget-object v0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 200
    new-instance v0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping$Builder;-><init>()V

    return-object v0
.end method

.method public static toKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 204
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLayout()Lorg/apache/logging/log4j/core/StringLayout;
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->layout:Lorg/apache/logging/log4j/core/StringLayout;

    return-object v0
.end method

.method public getLiteralValue()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->literalValue:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameKey()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->nameKey:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->parameter:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColumnMapping [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", literalValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->literalValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->parameter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/db/ColumnMapping;->layout:Lorg/apache/logging/log4j/core/StringLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
