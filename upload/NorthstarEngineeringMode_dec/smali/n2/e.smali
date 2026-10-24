.class public final enum Ln2/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln2/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Ln2/e;

.field public static final synthetic r:[Ln2/e;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Ln2/e;

    const-string v1, "engineering_mode_module_id_init"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ln2/e;

    const-string v2, "engineering_mode_module_id_tbox"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ln2/e;->c:Ln2/e;

    new-instance v2, Ln2/e;

    const-string v3, "engineering_mode_module_id_display"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ln2/e;

    const-string v4, "engineering_mode_module_id_info"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ln2/e;

    const-string v5, "engineering_mode_module_id_apa"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ln2/e;

    const-string v6, "engineering_mode_module_id_diag"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ln2/e;

    const-string v7, "engineering_mode_module_id_usb"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ln2/e;

    const-string v8, "engineering_mode_module_id_max"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v0 .. v7}, [Ln2/e;

    move-result-object v0

    sput-object v0, Ln2/e;->r:[Ln2/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Ln2/e;
    .locals 1

    const-class v0, Ln2/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln2/e;

    return-object p0
.end method

.method public static values()[Ln2/e;
    .locals 1

    sget-object v0, Ln2/e;->r:[Ln2/e;

    invoke-virtual {v0}, [Ln2/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln2/e;

    return-object v0
.end method
