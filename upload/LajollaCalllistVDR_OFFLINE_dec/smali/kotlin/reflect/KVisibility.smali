.class public final enum Lkotlin/reflect/KVisibility;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/KVisibility;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlin/reflect/KVisibility;",
        "",
        "PUBLIC",
        "PROTECTED",
        "INTERNAL",
        "PRIVATE",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.1"
.end annotation


# static fields
.field public static final enum INTERNAL:Lkotlin/reflect/KVisibility;

.field public static final enum PRIVATE:Lkotlin/reflect/KVisibility;

.field public static final enum PROTECTED:Lkotlin/reflect/KVisibility;

.field public static final enum PUBLIC:Lkotlin/reflect/KVisibility;

.field public static final synthetic a:[Lkotlin/reflect/KVisibility;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lkotlin/reflect/KVisibility;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/KVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/KVisibility;->PUBLIC:Lkotlin/reflect/KVisibility;

    new-instance v1, Lkotlin/reflect/KVisibility;

    const-string v2, "PROTECTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlin/reflect/KVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/KVisibility;->PROTECTED:Lkotlin/reflect/KVisibility;

    new-instance v2, Lkotlin/reflect/KVisibility;

    const-string v3, "INTERNAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lkotlin/reflect/KVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lkotlin/reflect/KVisibility;->INTERNAL:Lkotlin/reflect/KVisibility;

    new-instance v3, Lkotlin/reflect/KVisibility;

    const-string v4, "PRIVATE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lkotlin/reflect/KVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lkotlin/reflect/KVisibility;->PRIVATE:Lkotlin/reflect/KVisibility;

    filled-new-array {v0, v1, v2, v3}, [Lkotlin/reflect/KVisibility;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/KVisibility;->a:[Lkotlin/reflect/KVisibility;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/KVisibility;
    .locals 1

    const-class v0, Lkotlin/reflect/KVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KVisibility;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/KVisibility;
    .locals 1

    sget-object v0, Lkotlin/reflect/KVisibility;->a:[Lkotlin/reflect/KVisibility;

    invoke-virtual {v0}, [Lkotlin/reflect/KVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/KVisibility;

    return-object v0
.end method
