.class public final enum Lorg/apache/logging/log4j/core/net/Protocol;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/net/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/net/Protocol;

.field public static final enum SSL:Lorg/apache/logging/log4j/core/net/Protocol;

.field public static final enum TCP:Lorg/apache/logging/log4j/core/net/Protocol;

.field public static final enum UDP:Lorg/apache/logging/log4j/core/net/Protocol;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    new-instance v0, Lorg/apache/logging/log4j/core/net/Protocol;

    const-string v1, "TCP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/net/Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Protocol;->TCP:Lorg/apache/logging/log4j/core/net/Protocol;

    .line 26
    new-instance v0, Lorg/apache/logging/log4j/core/net/Protocol;

    const-string v1, "SSL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/logging/log4j/core/net/Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Protocol;->SSL:Lorg/apache/logging/log4j/core/net/Protocol;

    .line 28
    new-instance v0, Lorg/apache/logging/log4j/core/net/Protocol;

    const-string v1, "UDP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/logging/log4j/core/net/Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/Protocol;->UDP:Lorg/apache/logging/log4j/core/net/Protocol;

    .line 22
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/logging/log4j/core/net/Protocol;

    sget-object v5, Lorg/apache/logging/log4j/core/net/Protocol;->TCP:Lorg/apache/logging/log4j/core/net/Protocol;

    aput-object v5, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/core/net/Protocol;->SSL:Lorg/apache/logging/log4j/core/net/Protocol;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/apache/logging/log4j/core/net/Protocol;->$VALUES:[Lorg/apache/logging/log4j/core/net/Protocol;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/Protocol;
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

    .line 22
    const-class v0, Lorg/apache/logging/log4j/core/net/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/net/Protocol;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/net/Protocol;
    .locals 1

    .line 22
    sget-object v0, Lorg/apache/logging/log4j/core/net/Protocol;->$VALUES:[Lorg/apache/logging/log4j/core/net/Protocol;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/net/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/net/Protocol;

    return-object v0
.end method


# virtual methods
.method public isEqual(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/Protocol;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
