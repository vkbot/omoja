.class final enum Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;
.super Ljava/lang/Enum;
.source "PropertiesPlugin.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/lookup/StrLookup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/PropertiesPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NullLookup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;",
        ">;",
        "Lorg/apache/logging/log4j/core/lookup/StrLookup;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;

.field public static final enum INSTANCE:Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 86
    new-instance v0, Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;->INSTANCE:Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;

    .line 85
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;->$VALUES:[Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 85
    const-class v0, Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;
    .locals 1

    .line 85
    sget-object v0, Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;->$VALUES:[Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/config/PropertiesPlugin$NullLookup;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/LookupResult;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public evaluate(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Lorg/apache/logging/log4j/core/lookup/LookupResult;
    .locals 1
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

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public lookup(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
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

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method
