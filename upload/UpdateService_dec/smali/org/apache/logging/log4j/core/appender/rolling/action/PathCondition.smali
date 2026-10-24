.class public interface abstract Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
.super Ljava/lang/Object;
.source "PathCondition.java"


# static fields
.field public static final EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    return-void
.end method

.method public static varargs copy([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .locals 1
    .param p0, "source"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 42
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    :goto_1
    return-object v0
.end method


# virtual methods
.method public abstract accept(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "baseDir",
            "relativePath",
            "attrs"
        }
    .end annotation
.end method

.method public abstract beforeFileTreeWalk()V
.end method
