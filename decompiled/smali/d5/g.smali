.class public final enum Ld5/g;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lcom/google/protobuf/z;


# static fields
.field public static final enum c:Ld5/g;

.field public static final enum d:Ld5/g;

.field public static final enum e:Ld5/g;

.field public static final enum f:Ld5/g;

.field public static final synthetic g:[Ld5/g;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ld5/g;

    .line 2
    .line 3
    const-string v1, "UNKNOWN_DISMISS_TYPE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Ld5/g;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ld5/g;->c:Ld5/g;

    .line 10
    .line 11
    new-instance v1, Ld5/g;

    .line 12
    .line 13
    const-string v2, "AUTO"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Ld5/g;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Ld5/g;->d:Ld5/g;

    .line 20
    .line 21
    new-instance v2, Ld5/g;

    .line 22
    .line 23
    const-string v3, "CLICK"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v4}, Ld5/g;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Ld5/g;->e:Ld5/g;

    .line 30
    .line 31
    new-instance v3, Ld5/g;

    .line 32
    .line 33
    const-string v4, "SWIPE"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5, v5}, Ld5/g;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Ld5/g;->f:Ld5/g;

    .line 40
    .line 41
    filled-new-array {v0, v1, v2, v3}, [Ld5/g;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Ld5/g;->g:[Ld5/g;

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Ld5/g;->b:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ld5/g;
    .locals 1

    .line 1
    const-class v0, Ld5/g;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ld5/g;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ld5/g;
    .locals 1

    .line 1
    sget-object v0, Ld5/g;->g:[Ld5/g;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ld5/g;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ld5/g;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Ld5/g;->b:I

    .line 2
    .line 3
    return v0
.end method
