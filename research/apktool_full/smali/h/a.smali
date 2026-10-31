.class public final enum Lh/a;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final enum b:Lh/a;

.field public static final enum c:Lh/a;

.field public static final d:Lh/a;

.field public static final synthetic e:[Lh/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lh/a;

    .line 2
    .line 3
    const-string v1, "PREFER_ARGB_8888"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lh/a;->b:Lh/a;

    .line 10
    .line 11
    new-instance v1, Lh/a;

    .line 12
    .line 13
    const-string v2, "PREFER_RGB_565"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lh/a;->c:Lh/a;

    .line 20
    .line 21
    filled-new-array {v0, v1}, [Lh/a;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sput-object v1, Lh/a;->e:[Lh/a;

    .line 26
    .line 27
    sput-object v0, Lh/a;->d:Lh/a;

    .line 28
    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lh/a;
    .locals 1

    .line 1
    const-class v0, Lh/a;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lh/a;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lh/a;
    .locals 1

    .line 1
    sget-object v0, Lh/a;->e:[Lh/a;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lh/a;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lh/a;

    .line 8
    .line 9
    return-object v0
.end method
