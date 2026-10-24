.class public Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$Builder;
.super Ljava/lang/Object;
.source "SystemPropertyArbiter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ATTR_PROPERTY_NAME:Ljava/lang/String; = "propertyName"

.field public static final ATTR_PROPERTY_VALUE:Ljava/lang/String; = "propertyValue"


# instance fields
.field private propertyName:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "propertyName"
    .end annotation
.end field

.field private propertyValue:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "propertyValue"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBuilder()Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$Builder;
    .locals 0

    .line 86
    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$Builder;->build()Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter;
    .locals 4

    .line 90
    new-instance v0, Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$Builder;->propertyName:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$Builder;->propertyValue:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$1;)V

    return-object v0
.end method

.method public setPropertyName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$Builder;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "propertyName"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$Builder;->propertyName:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPropertyValue(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$Builder;
    .locals 1
    .param p1, "propertyValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "propertyValue"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$Builder;->propertyName:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$Builder;

    move-result-object v0

    return-object v0
.end method
