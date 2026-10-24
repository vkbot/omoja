.class public final Lv3/o1;
.super Lv3/w;
.source "SourceFile"


# static fields
.field public static final synthetic x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv3/o1;

    invoke-direct {v0}, Lv3/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final l(Lh3/f;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Lv3/r1;->r:Lv3/r1$a;

    invoke-interface {p1, p0}, Lh3/f;->s(Lh3/f$c;)Lh3/f$b;

    move-result-object p0

    check-cast p0, Lv3/r1;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.Unconfined"

    return-object p0
.end method
