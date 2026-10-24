.class public final Lorg/apache/logging/log4j/core/util/Patterns;
.super Ljava/lang/Object;
.source "Patterns.java"


# static fields
.field public static final COMMA_SEPARATOR:Ljava/lang/String;

.field public static final WHITESPACE:Ljava/lang/String; = "\\s*"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, ","

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Patterns;->toWhitespaceSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/util/Patterns;->COMMA_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static toWhitespaceSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "separator"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\s*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
