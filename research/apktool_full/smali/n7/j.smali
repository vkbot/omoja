.class public final enum Ln7/j;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final enum b:Ln7/j;

.field public static final enum c:Ln7/j;

.field public static final enum d:Ln7/j;

.field public static final enum e:Ln7/j;

.field public static final enum f:Ln7/j;

.field public static final synthetic g:[Ln7/j;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ln7/j;

    .line 2
    .line 3
    const-string v1, "CONNECTING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ln7/j;->b:Ln7/j;

    .line 10
    .line 11
    new-instance v1, Ln7/j;

    .line 12
    .line 13
    const-string v2, "READY"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Ln7/j;->c:Ln7/j;

    .line 20
    .line 21
    new-instance v2, Ln7/j;

    .line 22
    .line 23
    const-string v3, "TRANSIENT_FAILURE"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Ln7/j;->d:Ln7/j;

    .line 30
    .line 31
    new-instance v3, Ln7/j;

    .line 32
    .line 33
    const-string v4, "IDLE"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Ln7/j;->e:Ln7/j;

    .line 40
    .line 41
    new-instance v4, Ln7/j;

    .line 42
    .line 43
    const-string v5, "SHUTDOWN"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Ln7/j;->f:Ln7/j;

    .line 50
    .line 51
    filled-new-array {v0, v1, v2, v3, v4}, [Ln7/j;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Ln7/j;->g:[Ln7/j;

    .line 56
    .line 57
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ln7/j;
    .locals 1

    .line 1
    const-class v0, Ln7/j;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ln7/j;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ln7/j;
    .locals 1

    .line 1
    sget-object v0, Ln7/j;->g:[Ln7/j;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ln7/j;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ln7/j;

    .line 8
    .line 9
    return-object v0
.end method
