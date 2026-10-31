.class public final enum Lh8/f0;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lb8/b;


# static fields
.field public static final enum b:Lh8/f0;

.field public static final synthetic c:[Lh8/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lh8/f0;

    .line 2
    .line 3
    const-string v1, "INSTANCE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lh8/f0;->b:Lh8/f0;

    .line 10
    .line 11
    filled-new-array {v0}, [Lh8/f0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lh8/f0;->c:[Lh8/f0;

    .line 16
    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lh8/f0;
    .locals 1

    .line 1
    const-class v0, Lh8/f0;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lh8/f0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lh8/f0;
    .locals 1

    .line 1
    sget-object v0, Lh8/f0;->c:[Lh8/f0;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lh8/f0;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lh8/f0;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ln9/b;

    .line 2
    .line 3
    const-wide v0, 0x7fffffffffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0, v1}, Ln9/b;->d(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
