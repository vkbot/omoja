.class public final Lo3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ln3/p;)V
    .locals 2

    if-eqz p0, :cond_2

    instance-of v0, p0, Lo3/g;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lo3/g;

    invoke-interface {v0}, Lo3/g;->getArity()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ln3/a;

    if-nez v0, :cond_1

    instance-of v0, p0, Ln3/l;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, " cannot be cast to kotlin.jvm.functions.Function2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    const-class p0, Lo3/p;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lo3/h;->i(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method
