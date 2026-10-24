.class public final enum Ll/j$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ll/j$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Ll/j$f;

.field public static final enum r:Ll/j$f;

.field public static final enum x:Ll/j$f;

.field public static final synthetic y:[Ll/j$f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ll/j$f;

    const-string v1, "INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/j$f;->c:Ll/j$f;

    new-instance v1, Ll/j$f;

    const-string v2, "SWITCH_TO_SOURCE_SERVICE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ll/j$f;->r:Ll/j$f;

    new-instance v2, Ll/j$f;

    const-string v3, "DECODE_DATA"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ll/j$f;->x:Ll/j$f;

    filled-new-array {v0, v1, v2}, [Ll/j$f;

    move-result-object v0

    sput-object v0, Ll/j$f;->y:[Ll/j$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Ll/j$f;
    .locals 1

    const-class v0, Ll/j$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll/j$f;

    return-object p0
.end method

.method public static values()[Ll/j$f;
    .locals 1

    sget-object v0, Ll/j$f;->y:[Ll/j$f;

    invoke-virtual {v0}, [Ll/j$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll/j$f;

    return-object v0
.end method
