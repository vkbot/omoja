.class public final enum Lcom/mega/carsettings/ui/SwipeLayout$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/carsettings/ui/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mega/carsettings/ui/SwipeLayout$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/mega/carsettings/ui/SwipeLayout$d;

.field public static final enum r:Lcom/mega/carsettings/ui/SwipeLayout$d;

.field public static final synthetic x:[Lcom/mega/carsettings/ui/SwipeLayout$d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/mega/carsettings/ui/SwipeLayout$d;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mega/carsettings/ui/SwipeLayout$d;->c:Lcom/mega/carsettings/ui/SwipeLayout$d;

    new-instance v1, Lcom/mega/carsettings/ui/SwipeLayout$d;

    const-string v2, "Top"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/mega/carsettings/ui/SwipeLayout$d;

    const-string v3, "Right"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/mega/carsettings/ui/SwipeLayout$d;->r:Lcom/mega/carsettings/ui/SwipeLayout$d;

    new-instance v3, Lcom/mega/carsettings/ui/SwipeLayout$d;

    const-string v4, "Bottom"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/mega/carsettings/ui/SwipeLayout$d;

    move-result-object v0

    sput-object v0, Lcom/mega/carsettings/ui/SwipeLayout$d;->x:[Lcom/mega/carsettings/ui/SwipeLayout$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mega/carsettings/ui/SwipeLayout$d;
    .locals 1

    const-class v0, Lcom/mega/carsettings/ui/SwipeLayout$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mega/carsettings/ui/SwipeLayout$d;

    return-object p0
.end method

.method public static values()[Lcom/mega/carsettings/ui/SwipeLayout$d;
    .locals 1

    sget-object v0, Lcom/mega/carsettings/ui/SwipeLayout$d;->x:[Lcom/mega/carsettings/ui/SwipeLayout$d;

    invoke-virtual {v0}, [Lcom/mega/carsettings/ui/SwipeLayout$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mega/carsettings/ui/SwipeLayout$d;

    return-object v0
.end method
