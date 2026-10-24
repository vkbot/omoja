.class public Lk3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk3/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 0

    const-string p0, "cause"

    invoke-static {p1, p0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "exception"

    invoke-static {p2, p0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lk3/a$a;->a:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public b()Lp3/c;
    .locals 0

    new-instance p0, Lp3/b;

    invoke-direct {p0}, Lp3/b;-><init>()V

    return-object p0
.end method
