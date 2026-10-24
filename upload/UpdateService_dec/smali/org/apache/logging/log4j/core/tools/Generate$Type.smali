.class abstract enum Lorg/apache/logging/log4j/core/tools/Generate$Type;
.super Ljava/lang/Enum;
.source "Generate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/Generate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/tools/Generate$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/tools/Generate$Type;

.field public static final enum CUSTOM:Lorg/apache/logging/log4j/core/tools/Generate$Type;

.field public static final enum EXTEND:Lorg/apache/logging/log4j/core/tools/Generate$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 56
    new-instance v0, Lorg/apache/logging/log4j/core/tools/Generate$Type$1;

    const-string v1, "CUSTOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/tools/Generate$Type$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/Generate$Type;->CUSTOM:Lorg/apache/logging/log4j/core/tools/Generate$Type;

    .line 109
    new-instance v0, Lorg/apache/logging/log4j/core/tools/Generate$Type$2;

    const-string v1, "EXTEND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/logging/log4j/core/tools/Generate$Type$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/Generate$Type;->EXTEND:Lorg/apache/logging/log4j/core/tools/Generate$Type;

    .line 55
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/logging/log4j/core/tools/Generate$Type;

    sget-object v4, Lorg/apache/logging/log4j/core/tools/Generate$Type;->CUSTOM:Lorg/apache/logging/log4j/core/tools/Generate$Type;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/apache/logging/log4j/core/tools/Generate$Type;->$VALUES:[Lorg/apache/logging/log4j/core/tools/Generate$Type;

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

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/tools/Generate$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/tools/Generate$1;

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/tools/Generate$Type;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/Generate$Type;
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

    .line 55
    const-class v0, Lorg/apache/logging/log4j/core/tools/Generate$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/Generate$Type;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/tools/Generate$Type;
    .locals 1

    .line 55
    sget-object v0, Lorg/apache/logging/log4j/core/tools/Generate$Type;->$VALUES:[Lorg/apache/logging/log4j/core/tools/Generate$Type;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/tools/Generate$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/tools/Generate$Type;

    return-object v0
.end method


# virtual methods
.method abstract constructor()Ljava/lang/String;
.end method

.method abstract declaration()Ljava/lang/String;
.end method

.method abstract generator()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method abstract imports()Ljava/lang/String;
.end method
