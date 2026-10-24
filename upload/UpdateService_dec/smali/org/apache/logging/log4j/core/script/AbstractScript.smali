.class public abstract Lorg/apache/logging/log4j/core/script/AbstractScript;
.super Ljava/lang/Object;
.source "AbstractScript.java"


# static fields
.field protected static final DEFAULT_LANGUAGE:Ljava/lang/String; = "JavaScript"

.field protected static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final language:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final scriptText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/script/AbstractScript;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "scriptText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "language",
            "scriptText"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lorg/apache/logging/log4j/core/script/AbstractScript;->language:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lorg/apache/logging/log4j/core/script/AbstractScript;->scriptText:Ljava/lang/String;

    .line 37
    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/script/AbstractScript;->name:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/AbstractScript;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/AbstractScript;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptText()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/logging/log4j/core/script/AbstractScript;->scriptText:Ljava/lang/String;

    return-object v0
.end method
