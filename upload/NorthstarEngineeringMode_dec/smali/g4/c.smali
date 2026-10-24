.class public final enum Lg4/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg4/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic Z:[Lg4/c;

.field public static final enum c:Lg4/c;

.field public static final enum r:Lg4/c;

.field public static final enum x:Lg4/c;

.field public static final enum y:Lg4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lg4/c;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg4/c;->c:Lg4/c;

    new-instance v1, Lg4/c;

    const-string v2, "STORED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg4/c;->r:Lg4/c;

    new-instance v2, Lg4/c;

    const-string v3, "DYNAMIC_CODES"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg4/c;->x:Lg4/c;

    new-instance v3, Lg4/c;

    const-string v4, "FIXED_CODES"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg4/c;->y:Lg4/c;

    filled-new-array {v0, v1, v2, v3}, [Lg4/c;

    move-result-object v0

    sput-object v0, Lg4/c;->Z:[Lg4/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lg4/c;
    .locals 1

    const-class v0, Lg4/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg4/c;

    return-object p0
.end method

.method public static values()[Lg4/c;
    .locals 1

    sget-object v0, Lg4/c;->Z:[Lg4/c;

    invoke-virtual {v0}, [Lg4/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg4/c;

    return-object v0
.end method
