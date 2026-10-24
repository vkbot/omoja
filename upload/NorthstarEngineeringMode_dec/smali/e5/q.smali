.class public final enum Le5/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le5/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Le5/q;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic x:[Le5/q;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Le5/q;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Le5/q;-><init>(Ljava/lang/String;II)V

    new-instance v1, Le5/q;

    const/16 v2, 0x64

    const-string v3, "FATAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Le5/q;-><init>(Ljava/lang/String;II)V

    new-instance v2, Le5/q;

    const/16 v3, 0xc8

    const-string v4, "ERROR"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Le5/q;-><init>(Ljava/lang/String;II)V

    new-instance v3, Le5/q;

    const/16 v4, 0x12c

    const-string v5, "WARN"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Le5/q;-><init>(Ljava/lang/String;II)V

    new-instance v4, Le5/q;

    const/16 v5, 0x190

    const-string v6, "INFO"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Le5/q;-><init>(Ljava/lang/String;II)V

    new-instance v5, Le5/q;

    const/16 v6, 0x1f4

    const-string v7, "DEBUG"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Le5/q;-><init>(Ljava/lang/String;II)V

    new-instance v6, Le5/q;

    const/16 v7, 0x258

    const-string v8, "TRACE"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Le5/q;-><init>(Ljava/lang/String;II)V

    new-instance v7, Le5/q;

    const v8, 0x7fffffff

    const-string v9, "ALL"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Le5/q;-><init>(Ljava/lang/String;II)V

    filled-new-array/range {v0 .. v7}, [Le5/q;

    move-result-object v0

    sput-object v0, Le5/q;->x:[Le5/q;

    const-class v0, Le5/q;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Le5/q;->r:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Le5/q;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le5/q;
    .locals 1

    const-class v0, Le5/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le5/q;

    return-object p0
.end method

.method public static values()[Le5/q;
    .locals 1

    sget-object v0, Le5/q;->x:[Le5/q;

    invoke-virtual {v0}, [Le5/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le5/q;

    return-object v0
.end method
