.class public final enum Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;

.field public static final enum PERCENT:Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;

.field public static final enum POINTS:Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;

    const-string v1, "PERCENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;->PERCENT:Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;

    const-string v2, "POINTS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;->POINTS:Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;

    filled-new-array {v0, v1}, [Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;->$VALUES:[Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;
    .locals 1

    const-class v0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;->$VALUES:[Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;

    invoke-virtual {v0}, [Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;

    return-object v0
.end method
