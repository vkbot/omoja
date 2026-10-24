.class public final Lx3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, La4/a;->k()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lt3/d;

    invoke-direct {v1, v0}, Lt3/d;-><init>(Ljava/util/Iterator;)V

    instance-of v0, v1, Lt3/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lt3/a;

    invoke-direct {v0, v1}, Lt3/a;-><init>(Lt3/d;)V

    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lt3/c;->g0(Lt3/b;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lx3/e;->a:Ljava/util/List;

    return-void
.end method
