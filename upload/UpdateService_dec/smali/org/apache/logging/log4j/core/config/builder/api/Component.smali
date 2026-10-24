.class public Lorg/apache/logging/log4j/core/config/builder/api/Component;
.super Ljava/lang/Object;
.source "Component.java"


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/builder/api/Component;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginType:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/api/Component;->attributes:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/api/Component;->components:Ljava/util/List;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/api/Component;->pluginType:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/api/Component;->value:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pluginType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pluginType"
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/logging/log4j/core/config/builder/api/Component;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pluginType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pluginType",
            "name"
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/config/builder/api/Component;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pluginType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pluginType",
            "name",
            "value"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/api/Component;->attributes:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/api/Component;->components:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/builder/api/Component;->pluginType:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lorg/apache/logging/log4j/core/config/builder/api/Component;->value:Ljava/lang/String;

    .line 47
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 48
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/api/Component;->attributes:Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "newValue"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/api/Component;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public addComponent(Lorg/apache/logging/log4j/core/config/builder/api/Component;)V
    .locals 1
    .param p1, "component"    # Lorg/apache/logging/log4j/core/config/builder/api/Component;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "component"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/api/Component;->components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/api/Component;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/builder/api/Component;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/api/Component;->components:Ljava/util/List;

    return-object v0
.end method

.method public getPluginType()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/api/Component;->pluginType:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/builder/api/Component;->value:Ljava/lang/String;

    return-object v0
.end method
