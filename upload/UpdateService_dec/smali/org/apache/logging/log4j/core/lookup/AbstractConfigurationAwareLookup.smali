.class public abstract Lorg/apache/logging/log4j/core/lookup/AbstractConfigurationAwareLookup;
.super Lorg/apache/logging/log4j/core/lookup/AbstractLookup;
.source "AbstractConfigurationAwareLookup.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/ConfigurationAware;


# instance fields
.field protected configuration:Lorg/apache/logging/log4j/core/config/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/lookup/AbstractLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lorg/apache/logging/log4j/core/lookup/AbstractConfigurationAwareLookup;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 34
    return-void
.end method
