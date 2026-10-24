.class public final Lorg/apache/logging/log4j/core/config/CustomLevelConfig;
.super Ljava/lang/Object;
.source "CustomLevelConfig.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "CustomLevel"
    printObject = true
.end annotation


# static fields
.field static final EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/CustomLevelConfig;


# instance fields
.field private final intLevel:I

.field private final levelName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/logging/log4j/core/config/CustomLevelConfig;

    sput-object v0, Lorg/apache/logging/log4j/core/config/CustomLevelConfig;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/CustomLevelConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "levelName"    # Ljava/lang/String;
    .param p2, "intLevel"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "levelName",
            "intLevel"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "levelName is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/CustomLevelConfig;->levelName:Ljava/lang/String;

    .line 44
    iput p2, p0, Lorg/apache/logging/log4j/core/config/CustomLevelConfig;->intLevel:I

    .line 45
    return-void
.end method

.method public static createLevel(Ljava/lang/String;I)Lorg/apache/logging/log4j/core/config/CustomLevelConfig;
    .locals 3
    .param p0, "levelName"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "name"
        .end annotation
    .end param
    .param p1, "intLevel"    # I
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "intLevel"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "levelName",
            "intLevel"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 61
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Creating CustomLevel(name=\'{}\', intValue={})"

    invoke-virtual {v0, v2, p0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/Level;->forName(Ljava/lang/String;I)Lorg/apache/logging/log4j/Level;

    .line 63
    new-instance v0, Lorg/apache/logging/log4j/core/config/CustomLevelConfig;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/core/config/CustomLevelConfig;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "object"
        }
    .end annotation

    .line 92
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 93
    return v0

    .line 95
    :cond_0
    instance-of v1, p1, Lorg/apache/logging/log4j/core/config/CustomLevelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 96
    return v2

    .line 98
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/core/config/CustomLevelConfig;

    .line 99
    .local v1, "other":Lorg/apache/logging/log4j/core/config/CustomLevelConfig;
    iget v3, p0, Lorg/apache/logging/log4j/core/config/CustomLevelConfig;->intLevel:I

    iget v4, v1, Lorg/apache/logging/log4j/core/config/CustomLevelConfig;->intLevel:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/CustomLevelConfig;->levelName:Ljava/lang/String;

    iget-object v4, v1, Lorg/apache/logging/log4j/core/config/CustomLevelConfig;->levelName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getIntLevel()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/apache/logging/log4j/core/config/CustomLevelConfig;->intLevel:I

    return v0
.end method

.method public getLevelName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/CustomLevelConfig;->levelName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 87
    iget v0, p0, Lorg/apache/logging/log4j/core/config/CustomLevelConfig;->intLevel:I

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/CustomLevelConfig;->levelName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomLevel[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/CustomLevelConfig;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", intLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/config/CustomLevelConfig;->intLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
