.class public final enum Ll/j$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ll/j$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Z:Ll/j$g;

.field public static final enum b1:Ll/j$g;

.field public static final enum c:Ll/j$g;

.field public static final synthetic c1:[Ll/j$g;

.field public static final enum r:Ll/j$g;

.field public static final enum x:Ll/j$g;

.field public static final enum y:Ll/j$g;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ll/j$g;

    const-string v1, "INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll/j$g;->c:Ll/j$g;

    new-instance v1, Ll/j$g;

    const-string v2, "RESOURCE_CACHE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ll/j$g;->r:Ll/j$g;

    new-instance v2, Ll/j$g;

    const-string v3, "DATA_CACHE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ll/j$g;->x:Ll/j$g;

    new-instance v3, Ll/j$g;

    const-string v4, "SOURCE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ll/j$g;->y:Ll/j$g;

    new-instance v4, Ll/j$g;

    const-string v5, "ENCODE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Ll/j$g;->Z:Ll/j$g;

    new-instance v5, Ll/j$g;

    const-string v6, "FINISHED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ll/j$g;->b1:Ll/j$g;

    filled-new-array/range {v0 .. v5}, [Ll/j$g;

    move-result-object v0

    sput-object v0, Ll/j$g;->c1:[Ll/j$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Ll/j$g;
    .locals 1

    const-class v0, Ll/j$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll/j$g;

    return-object p0
.end method

.method public static values()[Ll/j$g;
    .locals 1

    sget-object v0, Ll/j$g;->c1:[Ll/j$g;

    invoke-virtual {v0}, [Ll/j$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll/j$g;

    return-object v0
.end method
