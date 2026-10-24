.class public final Lb1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.mega.chery.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ld/f;->z(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lb1/d;->a:Z

    return-void
.end method
