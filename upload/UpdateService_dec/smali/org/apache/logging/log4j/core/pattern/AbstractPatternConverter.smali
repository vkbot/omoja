.class public abstract Lorg/apache/logging/log4j/core/pattern/AbstractPatternConverter;
.super Ljava/lang/Object;
.source "AbstractPatternConverter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/pattern/PatternConverter;


# static fields
.field protected static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final name:Ljava/lang/String;

.field private final style:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AbstractPatternConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "style"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/logging/log4j/core/pattern/AbstractPatternConverter;->name:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lorg/apache/logging/log4j/core/pattern/AbstractPatternConverter;->style:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/AbstractPatternConverter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStyleClass(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "e"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/AbstractPatternConverter;->style:Ljava/lang/String;

    return-object v0
.end method
