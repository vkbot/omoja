.class public final Lorg/apache/logging/log4j/core/config/Property;
.super Ljava/lang/Object;
.source "Property.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "property"
    printObject = true
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/Property;

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final name:Ljava/lang/String;

.field private final rawValue:Ljava/lang/String;

.field private final value:Ljava/lang/String;

.field private final valueNeedsLookup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/logging/log4j/core/config/Property;

    sput-object v0, Lorg/apache/logging/log4j/core/config/Property;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/Property;

    .line 41
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/Property;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rawValue"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "rawValue",
            "value"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/Property;->name:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/apache/logging/log4j/core/config/Property;->rawValue:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lorg/apache/logging/log4j/core/config/Property;->value:Ljava/lang/String;

    .line 52
    if-eqz p3, :cond_0

    const-string v0, "${"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/config/Property;->valueNeedsLookup:Z

    .line 53
    return-void
.end method

.method public static createProperty(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/Property;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 107
    if-nez p0, :cond_0

    .line 108
    sget-object v0, Lorg/apache/logging/log4j/core/config/Property;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Property name cannot be null"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 110
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/config/Property;

    invoke-direct {v0, p0, p1, p1}, Lorg/apache/logging/log4j/core/config/Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/Property;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "name"
        .end annotation
    .end param
    .param p1, "rawValue"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginValue;
            substitute = false
            value = "value"
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginValue;
            value = "value"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "rawValue",
            "value"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 126
    if-nez p0, :cond_0

    .line 127
    sget-object v0, Lorg/apache/logging/log4j/core/config/Property;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Property name cannot be null"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 129
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/config/Property;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/config/Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public evaluate(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)Ljava/lang/String;
    .locals 1
    .param p1, "substitutor"    # Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "substitutor"
        }
    .end annotation

    .line 93
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/config/Property;->valueNeedsLookup:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/Property;->getRawValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/config/PropertiesPlugin;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/Property;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/Property;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRawValue()Ljava/lang/String;
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/Property;->rawValue:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/Property;->value:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValueNeedsLookup()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/config/Property;->valueNeedsLookup:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/Property;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/Property;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
