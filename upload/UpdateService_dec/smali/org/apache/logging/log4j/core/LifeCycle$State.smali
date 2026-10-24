.class public final enum Lorg/apache/logging/log4j/core/LifeCycle$State;
.super Ljava/lang/Enum;
.source "LifeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/LifeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/LifeCycle$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/LifeCycle$State;

.field public static final enum INITIALIZED:Lorg/apache/logging/log4j/core/LifeCycle$State;

.field public static final enum INITIALIZING:Lorg/apache/logging/log4j/core/LifeCycle$State;

.field public static final enum STARTED:Lorg/apache/logging/log4j/core/LifeCycle$State;

.field public static final enum STARTING:Lorg/apache/logging/log4j/core/LifeCycle$State;

.field public static final enum STOPPED:Lorg/apache/logging/log4j/core/LifeCycle$State;

.field public static final enum STOPPING:Lorg/apache/logging/log4j/core/LifeCycle$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 39
    new-instance v0, Lorg/apache/logging/log4j/core/LifeCycle$State;

    const-string v1, "INITIALIZING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/LifeCycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/LifeCycle$State;->INITIALIZING:Lorg/apache/logging/log4j/core/LifeCycle$State;

    .line 41
    new-instance v0, Lorg/apache/logging/log4j/core/LifeCycle$State;

    const-string v1, "INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/logging/log4j/core/LifeCycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/LifeCycle$State;->INITIALIZED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    .line 43
    new-instance v0, Lorg/apache/logging/log4j/core/LifeCycle$State;

    const-string v1, "STARTING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/logging/log4j/core/LifeCycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/LifeCycle$State;->STARTING:Lorg/apache/logging/log4j/core/LifeCycle$State;

    .line 45
    new-instance v0, Lorg/apache/logging/log4j/core/LifeCycle$State;

    const-string v1, "STARTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/logging/log4j/core/LifeCycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/LifeCycle$State;->STARTED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    .line 47
    new-instance v0, Lorg/apache/logging/log4j/core/LifeCycle$State;

    const-string v1, "STOPPING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/apache/logging/log4j/core/LifeCycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/LifeCycle$State;->STOPPING:Lorg/apache/logging/log4j/core/LifeCycle$State;

    .line 49
    new-instance v0, Lorg/apache/logging/log4j/core/LifeCycle$State;

    const-string v1, "STOPPED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/apache/logging/log4j/core/LifeCycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/LifeCycle$State;->STOPPED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    .line 37
    const/4 v1, 0x6

    new-array v1, v1, [Lorg/apache/logging/log4j/core/LifeCycle$State;

    sget-object v8, Lorg/apache/logging/log4j/core/LifeCycle$State;->INITIALIZING:Lorg/apache/logging/log4j/core/LifeCycle$State;

    aput-object v8, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/core/LifeCycle$State;->INITIALIZED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/LifeCycle$State;->STARTING:Lorg/apache/logging/log4j/core/LifeCycle$State;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/LifeCycle$State;->STARTED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/logging/log4j/core/LifeCycle$State;->STOPPING:Lorg/apache/logging/log4j/core/LifeCycle$State;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lorg/apache/logging/log4j/core/LifeCycle$State;->$VALUES:[Lorg/apache/logging/log4j/core/LifeCycle$State;

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

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/LifeCycle$State;
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

    .line 37
    const-class v0, Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LifeCycle$State;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/LifeCycle$State;
    .locals 1

    .line 37
    sget-object v0, Lorg/apache/logging/log4j/core/LifeCycle$State;->$VALUES:[Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/LifeCycle$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/LifeCycle$State;

    return-object v0
.end method
