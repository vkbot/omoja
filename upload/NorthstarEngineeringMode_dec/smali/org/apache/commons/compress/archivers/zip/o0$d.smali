.class public final enum Lorg/apache/commons/compress/archivers/zip/o0$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/zip/o0$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lorg/apache/commons/compress/archivers/zip/o0$d;

.field public static final enum r:Lorg/apache/commons/compress/archivers/zip/o0$d;

.field public static final enum x:Lorg/apache/commons/compress/archivers/zip/o0$d;

.field public static final synthetic y:[Lorg/apache/commons/compress/archivers/zip/o0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/o0$d;

    const-string v1, "NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/o0$d;->c:Lorg/apache/commons/compress/archivers/zip/o0$d;

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/o0$d;

    const-string v2, "NAME_WITH_EFS_FLAG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/compress/archivers/zip/o0$d;->r:Lorg/apache/commons/compress/archivers/zip/o0$d;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/o0$d;

    const-string v3, "UNICODE_EXTRA_FIELD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/compress/archivers/zip/o0$d;->x:Lorg/apache/commons/compress/archivers/zip/o0$d;

    filled-new-array {v0, v1, v2}, [Lorg/apache/commons/compress/archivers/zip/o0$d;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/o0$d;->y:[Lorg/apache/commons/compress/archivers/zip/o0$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/o0$d;
    .locals 1

    const-class v0, Lorg/apache/commons/compress/archivers/zip/o0$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/o0$d;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/zip/o0$d;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/o0$d;->y:[Lorg/apache/commons/compress/archivers/zip/o0$d;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/zip/o0$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/o0$d;

    return-object v0
.end method
