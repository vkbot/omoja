.class public final enum Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/PaintStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaintModifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

.field public static final enum DARKEN:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

.field public static final enum DARKEN_LESS:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

.field public static final enum LIGHTEN:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

.field public static final enum LIGHTEN_LESS:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

.field public static final enum NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

.field public static final enum NORM:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    new-instance v1, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    const-string v2, "NORM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NORM:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    new-instance v2, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    const-string v3, "LIGHTEN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->LIGHTEN:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    new-instance v3, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    const-string v4, "LIGHTEN_LESS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->LIGHTEN_LESS:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    new-instance v4, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    const-string v5, "DARKEN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->DARKEN:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    new-instance v5, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    const-string v6, "DARKEN_LESS"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->DARKEN_LESS:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    filled-new-array/range {v0 .. v5}, [Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->$VALUES:[Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->$VALUES:[Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    return-object v0
.end method
