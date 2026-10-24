.class public final enum Ly3/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly3/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Z:Ly3/a$b;

.field public static final synthetic b1:[Ly3/a$b;

.field public static final enum c:Ly3/a$b;

.field public static final enum r:Ly3/a$b;

.field public static final enum x:Ly3/a$b;

.field public static final enum y:Ly3/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ly3/a$b;

    const-string v1, "CPU_ACQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly3/a$b;->c:Ly3/a$b;

    new-instance v1, Ly3/a$b;

    const-string v2, "BLOCKING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly3/a$b;->r:Ly3/a$b;

    new-instance v2, Ly3/a$b;

    const-string v3, "PARKING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ly3/a$b;->x:Ly3/a$b;

    new-instance v3, Ly3/a$b;

    const-string v4, "DORMANT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ly3/a$b;->y:Ly3/a$b;

    new-instance v4, Ly3/a$b;

    const-string v5, "TERMINATED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Ly3/a$b;->Z:Ly3/a$b;

    filled-new-array {v0, v1, v2, v3, v4}, [Ly3/a$b;

    move-result-object v0

    sput-object v0, Ly3/a$b;->b1:[Ly3/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Ly3/a$b;
    .locals 1

    const-class v0, Ly3/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly3/a$b;

    return-object p0
.end method

.method public static values()[Ly3/a$b;
    .locals 1

    sget-object v0, Ly3/a$b;->b1:[Ly3/a$b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly3/a$b;

    return-object v0
.end method
