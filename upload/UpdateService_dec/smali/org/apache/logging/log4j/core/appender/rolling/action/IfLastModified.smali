.class public final Lorg/apache/logging/log4j/core/appender/rolling/action/IfLastModified;
.super Ljava/lang/Object;
.source "IfLastModified.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "IfLastModified"
    printObject = true
.end annotation


# static fields
.field private static final CLOCK:Lorg/apache/logging/log4j/core/util/Clock;

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final age:Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;

.field private final nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfLastModified;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 43
    invoke-static {}, Lorg/apache/logging/log4j/core/util/ClockFactory;->getClock()Lorg/apache/logging/log4j/core/util/Clock;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfLastModified;->CLOCK:Lorg/apache/logging/log4j/core/util/Clock;

    return-void
.end method

.method private constructor <init>(Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)V
    .locals 1
    .param p1, "age"    # Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;
    .param p2, "nestedConditions"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "age",
            "nestedConditions"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "age"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfLastModified;->age:Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;

    .line 50
    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;->copy([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfLastModified;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    .line 51
    return-void
.end method

.method public static varargs createAgeCondition(Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)Lorg/apache/logging/log4j/core/appender/rolling/action/IfLastModified;
    .locals 1
    .param p0, "age"    # Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "age"
        .end annotation
    .end param
    .param p1, "nestedConditions"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "PathConditions"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "age",
            "nestedConditions"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 105
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfLastModified;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/action/IfLastModified;-><init>(Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 15
    .param p1, "basePath"    # Ljava/nio/file/Path;
    .param p2, "relativePath"    # Ljava/nio/file/Path;
    .param p3, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "basePath",
            "relativePath",
            "attrs"
        }
    .end annotation

    .line 69
    move-object v0, p0

    invoke-interface/range {p3 .. p3}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    .line 70
    .local v1, "fileTime":Ljava/nio/file/attribute/FileTime;
    invoke-virtual {v1}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v2

    .line 71
    .local v2, "millis":J
    sget-object v4, Lorg/apache/logging/log4j/core/appender/rolling/action/IfLastModified;->CLOCK:Lorg/apache/logging/log4j/core/util/Clock;

    invoke-interface {v4}, Lorg/apache/logging/log4j/core/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 72
    .local v4, "ageMillis":J
    iget-object v6, v0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfLastModified;->age:Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;

    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->toMillis()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 73
    .local v6, "result":Z
    :goto_0
    if-eqz v6, :cond_1

    const-string v7, ">="

    goto :goto_1

    :cond_1
    const-string v7, "<"

    :goto_1
    move-object v13, v7

    .line 74
    .local v13, "match":Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v7, "ACCEPTED"

    goto :goto_2

    :cond_2
    const-string v7, "REJECTED"

    :goto_2
    move-object v10, v7

    .line 75
    .local v10, "accept":Ljava/lang/String;
    sget-object v8, Lorg/apache/logging/log4j/core/appender/rolling/action/IfLastModified;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v14, v0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfLastModified;->age:Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;

    const-string v9, "IfLastModified {}: {} ageMillis \'{}\' {} \'{}\'"

    move-object/from16 v11, p2

    invoke-interface/range {v8 .. v14}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    if-eqz v6, :cond_3

    .line 77
    iget-object v7, v0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfLastModified;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v11, p3

    invoke-static {v7, v8, v9, v11}, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAll;->accept([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z

    move-result v7

    return v7

    .line 79
    :cond_3
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v11, p3

    return v6
.end method

.method public beforeFileTreeWalk()V
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfLastModified;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAll;->beforeFileTreeWalk([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)V

    .line 90
    return-void
.end method

.method public getAge()Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfLastModified;->age:Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;

    return-object v0
.end method

.method public getNestedConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfLastModified;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 110
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfLastModified;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfLastModified;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "nested":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IfLastModified(age="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfLastModified;->age:Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
