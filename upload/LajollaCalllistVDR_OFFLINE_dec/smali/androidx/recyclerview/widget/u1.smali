.class public final Landroidx/recyclerview/widget/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ll/f;


# instance fields
.field public a:I

.field public b:Landroidx/recyclerview/widget/o0;

.field public c:Landroidx/recyclerview/widget/o0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ll/f;

    const/16 v1, 0x14

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ll/f;-><init>(II)V

    sput-object v0, Landroidx/recyclerview/widget/u1;->d:Ll/f;

    return-void
.end method

.method public static a()Landroidx/recyclerview/widget/u1;
    .locals 1

    sget-object v0, Landroidx/recyclerview/widget/u1;->d:Ll/f;

    invoke-virtual {v0}, Ll/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/u1;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/u1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/u1;-><init>()V

    :cond_0
    return-object v0
.end method
