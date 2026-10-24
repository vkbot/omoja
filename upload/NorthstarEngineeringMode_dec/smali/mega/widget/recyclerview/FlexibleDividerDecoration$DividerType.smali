.class public final enum Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/widget/recyclerview/FlexibleDividerDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DividerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

.field public static final enum COLOR:Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

.field public static final enum DRAWABLE:Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

.field public static final enum PAINT:Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;


# direct methods
.method private static synthetic $values()[Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;
    .locals 3

    sget-object v0, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;->DRAWABLE:Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    sget-object v1, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;->PAINT:Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    sget-object v2, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;->COLOR:Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    filled-new-array {v0, v1, v2}, [Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    const-string v1, "DRAWABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;->DRAWABLE:Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    new-instance v0, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    const-string v1, "PAINT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;->PAINT:Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    new-instance v0, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    const-string v1, "COLOR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;->COLOR:Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    invoke-static {}, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;->$values()[Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    move-result-object v0

    sput-object v0, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;->$VALUES:[Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

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

.method public static valueOf(Ljava/lang/String;)Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;
    .locals 1

    const-class v0, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    return-object p0
.end method

.method public static values()[Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;
    .locals 1

    sget-object v0, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;->$VALUES:[Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    invoke-virtual {v0}, [Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    return-object v0
.end method
