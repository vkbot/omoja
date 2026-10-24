.class public final enum Lorg/apache/poi/ddf/EscherPropertyTypesHolder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ddf/EscherPropertyTypesHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

.field public static final enum ARRAY:Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

.field public static final enum BOOLEAN:Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

.field public static final enum RGB:Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

.field public static final enum SHAPE_PATH:Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

.field public static final enum SIMPLE:Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

.field public static final enum UNKNOWN:Lorg/apache/poi/ddf/EscherPropertyTypesHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;->UNKNOWN:Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    new-instance v1, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    const-string v2, "BOOLEAN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;->BOOLEAN:Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    new-instance v2, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    const-string v3, "RGB"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;->RGB:Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    new-instance v3, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    const-string v4, "SHAPE_PATH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;->SHAPE_PATH:Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    new-instance v4, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    const-string v5, "SIMPLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;->SIMPLE:Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    new-instance v5, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    const-string v6, "ARRAY"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;->ARRAY:Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    filled-new-array/range {v0 .. v5}, [Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;->$VALUES:[Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ddf/EscherPropertyTypesHolder;
    .locals 1

    const-class v0, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ddf/EscherPropertyTypesHolder;
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypesHolder;->$VALUES:[Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    invoke-virtual {v0}, [Lorg/apache/poi/ddf/EscherPropertyTypesHolder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ddf/EscherPropertyTypesHolder;

    return-object v0
.end method
