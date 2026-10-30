.class public final enum Lcom/example/navistart/cores/ColorText;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/example/navistart/cores/ColorText;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/example/navistart/cores/ColorText;

.field public static final enum BLACK:Lcom/example/navistart/cores/ColorText;

.field public static final enum GREEN:Lcom/example/navistart/cores/ColorText;

.field public static final enum RED:Lcom/example/navistart/cores/ColorText;


# direct methods
.method private static synthetic $values()[Lcom/example/navistart/cores/ColorText;
    .locals 3

    .line 1
    sget-object v0, Lcom/example/navistart/cores/ColorText;->BLACK:Lcom/example/navistart/cores/ColorText;

    .line 2
    .line 3
    sget-object v1, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 4
    .line 5
    sget-object v2, Lcom/example/navistart/cores/ColorText;->GREEN:Lcom/example/navistart/cores/ColorText;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/example/navistart/cores/ColorText;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/example/navistart/cores/ColorText;

    .line 2
    .line 3
    const-string v1, "BLACK"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/example/navistart/cores/ColorText;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/example/navistart/cores/ColorText;->BLACK:Lcom/example/navistart/cores/ColorText;

    .line 10
    .line 11
    new-instance v0, Lcom/example/navistart/cores/ColorText;

    .line 12
    .line 13
    const-string v1, "RED"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/example/navistart/cores/ColorText;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 20
    .line 21
    new-instance v0, Lcom/example/navistart/cores/ColorText;

    .line 22
    .line 23
    const-string v1, "GREEN"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/example/navistart/cores/ColorText;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/example/navistart/cores/ColorText;->GREEN:Lcom/example/navistart/cores/ColorText;

    .line 30
    .line 31
    invoke-static {}, Lcom/example/navistart/cores/ColorText;->$values()[Lcom/example/navistart/cores/ColorText;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/example/navistart/cores/ColorText;->$VALUES:[Lcom/example/navistart/cores/ColorText;

    .line 36
    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/example/navistart/cores/ColorText;
    .locals 1

    .line 1
    const-class v0, Lcom/example/navistart/cores/ColorText;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/example/navistart/cores/ColorText;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/example/navistart/cores/ColorText;
    .locals 1

    .line 1
    sget-object v0, Lcom/example/navistart/cores/ColorText;->$VALUES:[Lcom/example/navistart/cores/ColorText;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/example/navistart/cores/ColorText;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/example/navistart/cores/ColorText;

    .line 8
    .line 9
    return-object v0
.end method
