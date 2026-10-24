.class public Lorg/apache/logging/log4j/core/util/KeyValuePair$Builder;
.super Ljava/lang/Object;
.source "KeyValuePair.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/KeyValuePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/util/KeyValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/util/KeyValuePair$Builder;->build()Lorg/apache/logging/log4j/core/util/KeyValuePair;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .locals 3

    .line 99
    new-instance v0, Lorg/apache/logging/log4j/core/util/KeyValuePair;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/KeyValuePair$Builder;->key:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/KeyValuePair$Builder;->value:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/util/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/KeyValuePair$Builder;
    .locals 0
    .param p1, "aKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "aKey"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/KeyValuePair$Builder;->key:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/KeyValuePair$Builder;
    .locals 0
    .param p1, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "aValue"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/KeyValuePair$Builder;->value:Ljava/lang/String;

    .line 94
    return-object p0
.end method
