.class abstract Lorg/apache/logging/log4j/core/jackson/LevelMixIn;
.super Ljava/lang/Object;
.source "LevelMixIn.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    value = {
        "name",
        "declaringClass",
        "standardLevel"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLevel(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
        mode = .enum Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DELEGATING:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract name()Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation
.end method
