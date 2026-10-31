.class public final enum Ln7/v;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final enum b:Ln7/v;

.field public static final enum c:Ln7/v;

.field public static final enum d:Ln7/v;

.field public static final synthetic e:[Ln7/v;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Ln7/v;

    .line 2
    .line 3
    const-string v1, "CT_UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ln7/v;

    .line 10
    .line 11
    const-string v2, "CT_INFO"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Ln7/v;->b:Ln7/v;

    .line 18
    .line 19
    new-instance v2, Ln7/v;

    .line 20
    .line 21
    const-string v3, "CT_WARNING"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v2, Ln7/v;->c:Ln7/v;

    .line 28
    .line 29
    new-instance v3, Ln7/v;

    .line 30
    .line 31
    const-string v4, "CT_ERROR"

    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    sput-object v3, Ln7/v;->d:Ln7/v;

    .line 38
    .line 39
    filled-new-array {v0, v1, v2, v3}, [Ln7/v;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Ln7/v;->e:[Ln7/v;

    .line 44
    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ln7/v;
    .registers 2

    .line 1
    const-class v0, Ln7/v;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ln7/v;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ln7/v;
    .registers 1

    .line 1
    sget-object v0, Ln7/v;->e:[Ln7/v;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ln7/v;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ln7/v;

    .line 8
    .line 9
    return-object v0
.end method
