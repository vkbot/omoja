.class public abstract Lorg/apache/logging/log4j/core/lookup/AbstractLookup;
.super Ljava/lang/Object;
.source "AbstractLookup.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/lookup/StrLookup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/LookupResult;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/core/lookup/AbstractLookup;->evaluate(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/LookupResult;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/logging/log4j/core/lookup/AbstractLookup;->lookup(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
