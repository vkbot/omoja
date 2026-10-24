.class public final Lorg/apache/logging/log4j/core/util/KeyValuePair;
.super Ljava/lang/Object;
.source "KeyValuePair.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/util/KeyValuePair$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "KeyValuePair"
    printObject = true
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/util/KeyValuePair;


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/logging/log4j/core/util/KeyValuePair;

    sput-object v0, Lorg/apache/logging/log4j/core/util/KeyValuePair;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/KeyValuePair;->key:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/apache/logging/log4j/core/util/KeyValuePair;->value:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/util/KeyValuePair$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 76
    new-instance v0, Lorg/apache/logging/log4j/core/util/KeyValuePair$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/util/KeyValuePair$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 111
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 112
    return v0

    .line 114
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 115
    return v1

    .line 117
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 118
    return v1

    .line 120
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/core/util/KeyValuePair;

    .line 121
    .local v2, "other":Lorg/apache/logging/log4j/core/util/KeyValuePair;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/util/KeyValuePair;->key:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/util/KeyValuePair;->key:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 122
    return v1

    .line 124
    :cond_3
    iget-object v3, p0, Lorg/apache/logging/log4j/core/util/KeyValuePair;->value:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/util/KeyValuePair;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 125
    return v1

    .line 127
    :cond_4
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/KeyValuePair;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/KeyValuePair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/KeyValuePair;->key:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/KeyValuePair;->value:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/KeyValuePair;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/KeyValuePair;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
