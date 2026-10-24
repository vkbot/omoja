.class public interface abstract Lorg/apache/logging/log4j/core/lookup/StrLookup;
.super Ljava/lang/Object;
.source "StrLookup.java"


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "Lookup"


# virtual methods
.method public evaluate(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/LookupResult;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 108
    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/core/lookup/StrLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/logging/log4j/core/lookup/DefaultLookupResult;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/lookup/DefaultLookupResult;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public evaluate(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/LookupResult;
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "key"
        }
    .end annotation

    .line 119
    invoke-interface {p0, p1, p2}, Lorg/apache/logging/log4j/core/lookup/StrLookup;->lookup(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/logging/log4j/core/lookup/DefaultLookupResult;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/lookup/DefaultLookupResult;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public abstract lookup(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract lookup(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "key"
        }
    .end annotation
.end method
