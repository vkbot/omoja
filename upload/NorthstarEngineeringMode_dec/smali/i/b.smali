.class public final enum Li/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Li/b;

.field public static final enum r:Li/b;

.field public static final x:Li/b;

.field public static final synthetic y:[Li/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Li/b;

    const-string v1, "PREFER_ARGB_8888"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/b;->c:Li/b;

    new-instance v1, Li/b;

    const-string v2, "PREFER_RGB_565"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li/b;->r:Li/b;

    filled-new-array {v0, v1}, [Li/b;

    move-result-object v1

    sput-object v1, Li/b;->y:[Li/b;

    sput-object v0, Li/b;->x:Li/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Li/b;
    .locals 1

    const-class v0, Li/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/b;

    return-object p0
.end method

.method public static values()[Li/b;
    .locals 1

    sget-object v0, Li/b;->y:[Li/b;

    invoke-virtual {v0}, [Li/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/b;

    return-object v0
.end method
