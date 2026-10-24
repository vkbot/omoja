.class public final Lz4/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:[D

.field public static final b:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lz4/c;->c:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    sput-object v0, Lz4/b$b;->a:[D

    sget-object v0, Lz4/c;->d:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    sput-object v0, Lz4/b$b;->b:[D

    return-void
.end method
