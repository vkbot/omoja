.class public final enum Li/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Li/c;

.field public static final enum r:Li/c;

.field public static final enum x:Li/c;

.field public static final synthetic y:[Li/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Li/c;

    const-string v1, "SOURCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/c;->c:Li/c;

    new-instance v1, Li/c;

    const-string v2, "TRANSFORMED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li/c;->r:Li/c;

    new-instance v2, Li/c;

    const-string v3, "NONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Li/c;->x:Li/c;

    filled-new-array {v0, v1, v2}, [Li/c;

    move-result-object v0

    sput-object v0, Li/c;->y:[Li/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Li/c;
    .locals 1

    const-class v0, Li/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/c;

    return-object p0
.end method

.method public static values()[Li/c;
    .locals 1

    sget-object v0, Li/c;->y:[Li/c;

    invoke-virtual {v0}, [Li/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c;

    return-object v0
.end method
